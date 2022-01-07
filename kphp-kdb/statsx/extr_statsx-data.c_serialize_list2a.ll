; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_serialize_list2a.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_serialize_list2a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"s:%ld:\22%s\22;a:%d:{\00", align 1
@serialize_list2a.t = internal global [4 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"i:%d;\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"s:%d:\22%s\22;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*, i32)* @serialize_list2a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serialize_list2a(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = trunc i64 %12 to i32
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14, i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %70, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 2, %22
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @serialize_list2a.t, i64 0, i64 0), align 1
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @serialize_list2a.t, i64 0, i64 1), align 1
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @serialize_list2a.t, i64 0, i64 2), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @serialize_list2a.t, i64 0, i64 3), align 1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %25
  %53 = load i8*, i8** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %65

60:                                               ; preds = %25
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @serialize_list2a.t, i64 0, i64 0))
  %63 = trunc i64 %62 to i32
  %64 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @serialize_list2a.t, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %52
  %66 = phi i32 [ %59, %52 ], [ %64, %60 ]
  %67 = load i8*, i8** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %5, align 8
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %20

73:                                               ; preds = %20
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 125, i8* %74, align 1
  %76 = load i8*, i8** %5, align 8
  ret i8* %76
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
