; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_offset_crc_body.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_offset_crc_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rite_binary_header = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @offset_crc_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @offset_crc_body() #0 {
  %1 = alloca %struct.rite_binary_header, align 8
  %2 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = inttoptr i64 %3 to i32*
  %5 = bitcast %struct.rite_binary_header* %1 to i32*
  %6 = ptrtoint i32* %4 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  %10 = add i64 %9, 8
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
