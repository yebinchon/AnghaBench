; ModuleID = '/home/carl/AnghaBench/git/extr_xdiff-interface.c_ff_regexp.c'
source_filename = "/home/carl/AnghaBench/git/extr_xdiff-interface.c_ff_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_regs = type { i32, %struct.ff_reg* }
%struct.ff_reg = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*)* @ff_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ff_regexp(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ff_regs*, align 8
  %13 = alloca [2 x %struct.TYPE_3__], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ff_reg*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.ff_regs*
  store %struct.ff_regs* %18, %struct.ff_regs** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %34, 2
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 13
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 %41, 2
  store i64 %42, i64* %8, align 8
  br label %46

43:                                               ; preds = %32, %29
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %21, %5
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %76, %47
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.ff_regs*, %struct.ff_regs** %12, align 8
  %51 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load %struct.ff_regs*, %struct.ff_regs** %12, align 8
  %56 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %55, i32 0, i32 1
  %57 = load %struct.ff_reg*, %struct.ff_reg** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ff_reg, %struct.ff_reg* %57, i64 %59
  store %struct.ff_reg* %60, %struct.ff_reg** %16, align 8
  %61 = load %struct.ff_reg*, %struct.ff_reg** %16, align 8
  %62 = getelementptr inbounds %struct.ff_reg, %struct.ff_reg* %61, i32 0, i32 1
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %13, i64 0, i64 0
  %66 = call i32 @regexec_buf(i32* %62, i8* %63, i64 %64, i32 2, %struct.TYPE_3__* %65, i32 0)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %54
  %69 = load %struct.ff_reg*, %struct.ff_reg** %16, align 8
  %70 = getelementptr inbounds %struct.ff_reg, %struct.ff_reg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i64 -1, i64* %6, align 8
  br label %145

74:                                               ; preds = %68
  br label %79

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %48

79:                                               ; preds = %74, %48
  %80 = load %struct.ff_regs*, %struct.ff_regs** %12, align 8
  %81 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i64 -1, i64* %6, align 8
  br label %145

86:                                               ; preds = %79
  %87 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %13, i64 0, i64 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 16
  %90 = icmp sge i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %13, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 16
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %7, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %13, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %13, i64 0, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 16
  %111 = sub nsw i64 %105, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %10, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %86
  %118 = load i64, i64* %10, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %117, %86
  br label %121

121:                                              ; preds = %135, %120
  %122 = load i32, i32* %15, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @isspace(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %124, %121
  %134 = phi i1 [ false, %121 ], [ %132, %124 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %15, align 4
  br label %121

138:                                              ; preds = %133
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @memcpy(i8* %139, i8* %140, i32 %141)
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %138, %85, %73
  %146 = load i64, i64* %6, align 8
  ret i64 %146
}

declare dso_local i32 @regexec_buf(i32*, i8*, i64, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
