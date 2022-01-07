; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_dfs_visit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_dfs_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_expression = type { i32, i8*, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.tl_token* }
%struct.tl_token = type { i8*, %struct.tl_token* }
%struct.TYPE_3__ = type { %struct.tl_token* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_compiler*, %struct.tl_expression*)* @tl_expression_dfs_visit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_expression_dfs_visit(%struct.tl_compiler* %0, %struct.tl_expression* %1) #0 {
  %3 = alloca %struct.tl_compiler*, align 8
  %4 = alloca %struct.tl_expression*, align 8
  %5 = alloca %struct.tl_token*, align 8
  %6 = alloca i8*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %3, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %4, align 8
  %7 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %8 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %75

12:                                               ; preds = %2
  %13 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %14 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %16 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.tl_token*, %struct.tl_token** %18, align 8
  store %struct.tl_token* %19, %struct.tl_token** %5, align 8
  br label %20

20:                                               ; preds = %40, %12
  %21 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %22 = icmp ne %struct.tl_token* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %25 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 58)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @dfs_typename_visit(%struct.tl_compiler* %31, i8* %32)
  br label %39

34:                                               ; preds = %23
  %35 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @dfs_typename_visit(%struct.tl_compiler* %35, i8* %37)
  br label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %42 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %41, i32 0, i32 1
  %43 = load %struct.tl_token*, %struct.tl_token** %42, align 8
  store %struct.tl_token* %43, %struct.tl_token** %5, align 8
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %46 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %51 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.tl_token*, %struct.tl_token** %53, align 8
  store %struct.tl_token* %54, %struct.tl_token** %5, align 8
  br label %55

55:                                               ; preds = %64, %49
  %56 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %57 = icmp ne %struct.tl_token* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %60 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %61 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @dfs_typename_visit(%struct.tl_compiler* %59, i8* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load %struct.tl_token*, %struct.tl_token** %5, align 8
  %66 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %65, i32 0, i32 1
  %67 = load %struct.tl_token*, %struct.tl_token** %66, align 8
  store %struct.tl_token* %67, %struct.tl_token** %5, align 8
  br label %55

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %71 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %72 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @dfs_typename_visit(%struct.tl_compiler* %70, i8* %73)
  br label %75

75:                                               ; preds = %69, %11
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dfs_typename_visit(%struct.tl_compiler*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
