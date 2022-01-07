; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_emit_context_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_emit_context_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emit_callback = type { i32, i32 }

@WSEH_CONTEXT = common dso_local global i32 0, align 4
@DIFF_SYMBOL_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emit_callback*, i8*, i32)* @emit_context_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_context_line(%struct.emit_callback* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.emit_callback*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.emit_callback* %0, %struct.emit_callback** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @WSEH_CONTEXT, align 4
  %9 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %10 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %14 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DIFF_SYMBOL_CONTEXT, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @emit_diff_symbol(i32 %15, i32 %16, i8* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @emit_diff_symbol(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
