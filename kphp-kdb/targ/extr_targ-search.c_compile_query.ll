; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_compile_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_compile_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Qw = common dso_local global i64 0, align 8
@Qfree = common dso_local global i64 0, align 8
@Qs0 = common dso_local global i8* null, align 8
@Qs = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"parsing query `%s'\0A\00", align 1
@Qq = common dso_local global i64 0, align 8
@Q_order = common dso_local global i64 0, align 8
@Q_limit = common dso_local global i64 0, align 8
@Q_aux_num = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @compile_query(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @Qw, align 8
  store i64 0, i64* @Qfree, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @Qs0, align 8
  store i8* %3, i8** @Qs, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = call i64 @parse_query(i32 128)
  store i64 %6, i64* @Qq, align 8
  store i64 0, i64* @Q_order, align 8
  store i64 0, i64* @Q_limit, align 8
  store i64 0, i64* @Q_aux_num, align 8
  %7 = load i64, i64* @Qq, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** @Qs, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i8* [ null, %9 ], [ %11, %10 ]
  ret i8* %13
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i64 @parse_query(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
