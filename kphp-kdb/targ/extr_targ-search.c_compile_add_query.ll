; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_compile_add_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_compile_add_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"parsing additional query %.40s...\0A\00", align 1
@Qq = common dso_local global i8* null, align 8
@Q_aux_num = common dso_local global i64 0, align 8
@MAX_AUX_QUERIES = common dso_local global i64 0, align 8
@Q_aux = common dso_local global i8** null, align 8
@Qs = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @compile_add_query(i8** %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i8*, i8** @Qq, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @Q_aux_num, align 8
  %12 = load i64, i64* @MAX_AUX_QUERIES, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32* null, i32** %2, align 8
  br label %29

15:                                               ; preds = %10
  %16 = load i8*, i8** @Qq, align 8
  %17 = load i8**, i8*** @Q_aux, align 8
  %18 = load i64, i64* @Q_aux_num, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @Q_aux_num, align 8
  %20 = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8* %16, i8** %20, align 8
  store i8* null, i8** @Qq, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i8**, i8*** %3, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** @Qs, align 8
  %24 = call i8* @parse_query(i32 128)
  store i8* %24, i8** @Qq, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %4, align 8
  %26 = load i8*, i8** @Qs, align 8
  %27 = load i8**, i8*** %3, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %2, align 8
  br label %29

29:                                               ; preds = %21, %14
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i8* @parse_query(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
