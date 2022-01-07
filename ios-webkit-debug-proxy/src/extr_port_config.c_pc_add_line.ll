; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_port_config.c_pc_add_line.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_port_config.c_pc_add_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pc_add_line(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %104, %3
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %107

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  br label %39

39:                                               ; preds = %37, %23
  %40 = phi i1 [ false, %23 ], [ %38, %37 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  br label %23

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %72, %44
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 10
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 35
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 44
  br label %70

70:                                               ; preds = %65, %60, %55, %50, %46
  %71 = phi i1 [ false, %60 ], [ false, %55 ], [ false, %50 ], [ false, %46 ], [ %69, %65 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  br label %46

75:                                               ; preds = %70
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i64 @pc_parse(i32 %80, i8* %81, i32 %87, i8** %11, i32* %12, i32* %13)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i8*, i8** %8, align 8
  store i8* %91, i8** %4, align 8
  br label %108

92:                                               ; preds = %79
  %93 = load i32, i32* %5, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @pc_add(i32 %93, i8* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %75
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 44
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %107

104:                                              ; preds = %98
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %8, align 8
  br label %18

107:                                              ; preds = %103, %18
  store i8* null, i8** %4, align 8
  br label %108

108:                                              ; preds = %107, %90
  %109 = load i8*, i8** %4, align 8
  ret i8* %109
}

declare dso_local i64 @pc_parse(i32, i8*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @pc_add(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
