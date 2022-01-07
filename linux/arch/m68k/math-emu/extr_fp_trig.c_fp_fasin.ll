; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_trig.c_fp_fasin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_trig.c_fp_fasin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"fasin\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fasin(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  store %struct.fp_ext* %0, %struct.fp_ext** %3, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %4, align 8
  %5 = call i32 @uprint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %7 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %8 = call i32 @fp_monadic_check(%struct.fp_ext* %6, %struct.fp_ext* %7)
  %9 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %9
}

declare dso_local i32 @uprint(i8*) #1

declare dso_local i32 @fp_monadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
