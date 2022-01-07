; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_misc_64.c_prom_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_misc_64.c_prom_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@ldom_domaining_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_reboot(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x i64], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  store i64 ptrtoint ([5 x i8]* @.str to i64), i64* %4, align 16
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  store i64 1, i64* %5, align 8
  %6 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  store i64 0, i64* %6, align 16
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %11 = call i32 @p1275_cmd_direct(i64* %10)
  ret void
}

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
