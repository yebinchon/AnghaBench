; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_write_footer.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_write_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rite_binary_footer = type { i32, i32* }

@RITE_BINARY_EOF = common dso_local global %struct.rite_binary_footer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @write_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_footer(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rite_binary_footer, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds %struct.rite_binary_footer, %struct.rite_binary_footer* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.rite_binary_footer*, %struct.rite_binary_footer** @RITE_BINARY_EOF, align 8
  %9 = call i32 @memcpy(i32* %7, %struct.rite_binary_footer* %8, i32 8)
  %10 = getelementptr inbounds %struct.rite_binary_footer, %struct.rite_binary_footer* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @uint32_to_bin(i32 16, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @memcpy(i32* %13, %struct.rite_binary_footer* %5, i32 16)
  ret i32 16
}

declare dso_local i32 @memcpy(i32*, %struct.rite_binary_footer*, i32) #1

declare dso_local i32 @uint32_to_bin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
