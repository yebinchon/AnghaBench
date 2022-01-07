; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_getCmdLine.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_getCmdLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_ARGMAX = common dso_local global i32 0, align 4
@KERN_PROCARGS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DarwinProcess_getCmdLine(%struct.kinfo_proc* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @CTL_KERN, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @KERN_ARGMAX, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  store i64 4, i64* %10, align 8
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %21 = call i32 (i32*, i32, ...) @sysctl(i32* %20, i32 2, i32* %7, i64* %10, i8* null, i32 0)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %174

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @xMalloc(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %174

31:                                               ; preds = %24
  %32 = load i32, i32* @CTL_KERN, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @KERN_PROCARGS2, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %37 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %10, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 (i32*, i32, ...) @sysctl(i32* %43, i32 3, i8* %44, i64* %10, i8* null, i32 0)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %171

48:                                               ; preds = %31
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @memcpy(i32* %8, i8* %49, i32 4)
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %52, i8** %14, align 8
  br label %53

53:                                               ; preds = %66, %48
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = icmp ult i8* %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %14, align 8
  br label %53

69:                                               ; preds = %64, %53
  %70 = load i8*, i8** %14, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = icmp eq i8* %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %171

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = icmp ult i8* %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i8*, i8** %14, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %93

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %14, align 8
  br label %77

93:                                               ; preds = %88, %77
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = icmp eq i8* %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %171

100:                                              ; preds = %93
  %101 = load i8*, i8** %14, align 8
  store i8* %101, i8** %12, align 8
  %102 = load i32*, i32** %5, align 8
  store i32 0, i32* %102, align 4
  store i8* null, i8** %13, align 8
  br label %103

103:                                              ; preds = %142, %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i8*, i8** %14, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = icmp ult i8* %108, %111
  br label %113

113:                                              ; preds = %107, %103
  %114 = phi i1 [ false, %103 ], [ %112, %107 ]
  br i1 %114, label %115, label %145

115:                                              ; preds = %113
  %116 = load i8*, i8** %14, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load i8*, i8** %13, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i8*, i8** %13, align 8
  store i8 32, i8* %126, align 1
  br label %127

127:                                              ; preds = %125, %120
  %128 = load i8*, i8** %14, align 8
  store i8* %128, i8** %13, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i8*, i8** %14, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = load i32*, i32** %5, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %132, %127
  br label %141

141:                                              ; preds = %140, %115
  br label %142

142:                                              ; preds = %141
  %143 = load i8*, i8** %14, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %14, align 8
  br label %103

145:                                              ; preds = %113
  %146 = load i8*, i8** %13, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = icmp eq i8* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148, %145
  br label %171

153:                                              ; preds = %148
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i8*, i8** %13, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = load i32*, i32** %5, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %157, %153
  %166 = load i8*, i8** %12, align 8
  %167 = call i8* @xStrdup(i8* %166)
  store i8* %167, i8** %15, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** %15, align 8
  store i8* %170, i8** %3, align 8
  br label %184

171:                                              ; preds = %152, %99, %75, %47
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @free(i8* %172)
  br label %174

174:                                              ; preds = %171, %30, %23
  %175 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %176 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @xStrdup(i8* %178)
  store i8* %179, i8** %15, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = call i32 @strlen(i8* %180)
  %182 = load i32*, i32** %5, align 8
  store i32 %181, i32* %182, align 4
  %183 = load i8*, i8** %15, align 8
  store i8* %183, i8** %3, align 8
  br label %184

184:                                              ; preds = %174, %165
  %185 = load i8*, i8** %3, align 8
  ret i8* %185
}

declare dso_local i32 @sysctl(i32*, i32, ...) #1

declare dso_local i64 @xMalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @xStrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
