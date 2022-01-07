; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_format_placeholders.c_format_placeholders.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_format_placeholders.c_format_placeholders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_placeholders(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %161

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %79, %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @CS_STARTS_WITH(i8* %36, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %75

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sub nsw i32 %47, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %55, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = sub nsw i32 %70, 1
  %72 = load i8*, i8** %9, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %9, align 8
  br label %78

75:                                               ; preds = %45
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %31

78:                                               ; preds = %46, %31
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  br label %25

82:                                               ; preds = %25
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %11, align 8
  %86 = alloca i8, i64 %84, align 16
  store i64 %84, i64* %12, align 8
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %5, align 8
  store i8* %87, i8** %14, align 8
  br label %88

88:                                               ; preds = %154, %82
  %89 = load i8*, i8** %14, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %157

93:                                               ; preds = %88
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 37
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %14, align 8
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %13, align 8
  store i8 %100, i8* %101, align 1
  br label %154

103:                                              ; preds = %93
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %142, %103
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %145

108:                                              ; preds = %104
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @CS_STARTS_WITH(i8* %109, i8* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  br label %142

119:                                              ; preds = %108
  store i32 1, i32* %15, align 4
  %120 = load i8*, i8** %13, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @sprintf(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %126)
  %128 = load i8*, i8** %13, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %13, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = sub nsw i32 %137, 1
  %139 = load i8*, i8** %14, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %14, align 8
  br label %145

142:                                              ; preds = %118
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %104

145:                                              ; preds = %119, %104
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load i8*, i8** %14, align 8
  %150 = load i8, i8* %149, align 1
  %151 = load i8*, i8** %13, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %13, align 8
  store i8 %150, i8* %151, align 1
  br label %153

153:                                              ; preds = %148, %145
  br label %154

154:                                              ; preds = %153, %98
  %155 = load i8*, i8** %14, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %14, align 8
  br label %88

157:                                              ; preds = %88
  %158 = load i8*, i8** %13, align 8
  store i8 0, i8* %158, align 1
  %159 = call i8* @sstrdup(i8* %86)
  store i8* %159, i8** %4, align 8
  %160 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %160)
  br label %161

161:                                              ; preds = %157, %19
  %162 = load i8*, i8** %4, align 8
  ret i8* %162
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CS_STARTS_WITH(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
