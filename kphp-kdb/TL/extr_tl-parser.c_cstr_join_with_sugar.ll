; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_cstr_join_with_sugar.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_cstr_join_with_sugar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_token = type { i8*, %struct.tl_token* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cstr_join_with_sugar(%struct.tl_token* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tl_token*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.tl_token* %0, %struct.tl_token** %3, align 8
  %9 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %10 = call i32 @tl_token_length(%struct.tl_token* %9, i32* %5, i32* %6)
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %19 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @cstr_dup(i8* %20)
  store i8* %21, i8** %2, align 8
  br label %75

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i8* @tl_zzmalloc(i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %8, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %57, %22
  %31 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %32 = icmp ne %struct.tl_token* %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %36 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %8, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %8, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 62, i32 44
  br label %52

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %44
  %53 = phi i32 [ %50, %44 ], [ 60, %51 ]
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  store i8 %54, i8* %55, align 1
  br label %57

57:                                               ; preds = %52
  %58 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %59 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %58, i32 0, i32 1
  %60 = load %struct.tl_token*, %struct.tl_token** %59, align 8
  store %struct.tl_token* %60, %struct.tl_token** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %30

63:                                               ; preds = %30
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8 0, i8* %64, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = icmp eq i8* %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %63, %17
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i32 @tl_token_length(%struct.tl_token*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @cstr_dup(i8*) #1

declare dso_local i8* @tl_zzmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
