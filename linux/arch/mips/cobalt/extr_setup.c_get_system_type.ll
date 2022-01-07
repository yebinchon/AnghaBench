; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cobalt/extr_setup.c_get_system_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cobalt/extr_setup.c_get_system_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cobalt_board_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Cobalt Qube\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Cobalt RaQ\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Cobalt Qube2\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Cobalt RaQ2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"MIPS Cobalt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_system_type() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @cobalt_board_id, align 4
  switch i32 %2, label %7 [
    i32 131, label %3
    i32 129, label %4
    i32 130, label %5
    i32 128, label %6
  ]

3:                                                ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %8

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %8

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %8

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %8

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %8

8:                                                ; preds = %7, %6, %5, %4, %3
  %9 = load i8*, i8** %1, align 8
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
