; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_ref_update_reject_duplicates.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_ref_update_reject_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"multiple updates for ref '%s' not allowed\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"ref_update_reject_duplicates() received unsorted list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ref_update_reject_duplicates(%struct.string_list* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %9 = load %struct.string_list*, %struct.string_list** %4, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = call i32 @assert(%struct.strbuf* %12)
  store i64 1, i64* %6, align 8
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load %struct.string_list*, %struct.string_list** %4, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.string_list*, %struct.string_list** %4, align 8
  %28 = getelementptr inbounds %struct.string_list, %struct.string_list* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i32 %26, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %18
  %38 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %39 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.string_list*, %struct.string_list** %4, align 8
  %41 = getelementptr inbounds %struct.string_list, %struct.string_list* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strbuf_addf(%struct.strbuf* %38, i32 %39, i32 %46)
  store i32 1, i32* %3, align 4
  br label %59

48:                                               ; preds = %18
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @BUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %14

58:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @assert(%struct.strbuf*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
