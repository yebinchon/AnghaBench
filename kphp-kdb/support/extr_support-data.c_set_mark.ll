; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_set_mark.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_set_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_support_set_mark = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Setting mark for question %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_mark(%struct.lev_support_set_mark* %0) #0 {
  %2 = alloca %struct.lev_support_set_mark*, align 8
  store %struct.lev_support_set_mark* %0, %struct.lev_support_set_mark** %2, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.lev_support_set_mark*, %struct.lev_support_set_mark** %2, align 8
  %8 = getelementptr inbounds %struct.lev_support_set_mark, %struct.lev_support_set_mark* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lev_support_set_mark*, %struct.lev_support_set_mark** %2, align 8
  %11 = getelementptr inbounds %struct.lev_support_set_mark, %struct.lev_support_set_mark* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  br label %14

14:                                               ; preds = %5, %1
  %15 = load %struct.lev_support_set_mark*, %struct.lev_support_set_mark** %2, align 8
  %16 = getelementptr inbounds %struct.lev_support_set_mark, %struct.lev_support_set_mark* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lev_support_set_mark*, %struct.lev_support_set_mark** %2, align 8
  %19 = getelementptr inbounds %struct.lev_support_set_mark, %struct.lev_support_set_mark* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @change_mark(i32 %17, i32 %20)
  ret i32 %21
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @change_mark(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
