; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_FindClientModelFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_FindClientModelFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"models/players/%s%s/%s%s_%s_%s.%s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"models/players/%s%s/%s_%s_%s.%s\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"models/players/%s%s/%s%s_%s.%s\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"models/players/%s%s/%s_%s.%s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"characters/\00", align 1
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*)* @CG_FindClientModelFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_FindClientModelFile(i8* %0, i32 %1, %struct.TYPE_4__* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %22 = load i64, i64* @GT_TEAM, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 128, label %28
  ]

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %30

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %30

30:                                               ; preds = %29, %28
  br label %32

31:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %32

32:                                               ; preds = %31, %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %33

33:                                               ; preds = %32, %165
  store i32 0, i32* %20, align 4
  br label %34

34:                                               ; preds = %156, %33
  %35 = load i32, i32* %20, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %159

37:                                               ; preds = %34
  %38 = load i32, i32* %20, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load i8*, i8** %13, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %19, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %51, i8* %52, i8* %53, i8* %54, i8* %55, i8* %56, i8* %57)
  br label %69

59:                                               ; preds = %43, %40, %37
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i8*, i8** %19, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %62, i8* %63, i8* %64, i8* %65, i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %59, %48
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 @CG_FileExists(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @qtrue, align 4
  store i32 %74, i32* %9, align 4
  br label %168

75:                                               ; preds = %69
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %77 = load i64, i64* @GT_TEAM, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load i32, i32* %20, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i8*, i8** %13, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i8*, i8** %19, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %91, i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %93, i8* %94, i8* %95, i8* %96, i8* %97, i8* %98)
  br label %109

100:                                              ; preds = %85, %82, %79
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %101, i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %103, i8* %104, i8* %105, i8* %106, i8* %107)
  br label %109

109:                                              ; preds = %100, %90
  br label %141

110:                                              ; preds = %75
  %111 = load i32, i32* %20, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = load i8*, i8** %13, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load i8*, i8** %13, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i8*, i8** %19, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %122, i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %124, i8* %125, i8* %126, i8* %127, i8* %128, i8* %129)
  br label %140

131:                                              ; preds = %116, %113, %110
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i8*, i8** %19, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %132, i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %134, i8* %135, i8* %136, i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %131, %121
  br label %141

141:                                              ; preds = %140, %109
  %142 = load i8*, i8** %10, align 8
  %143 = call i64 @CG_FileExists(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @qtrue, align 4
  store i32 %146, i32* %9, align 4
  br label %168

147:                                              ; preds = %141
  %148 = load i8*, i8** %13, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i8*, i8** %13, align 8
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150, %147
  br label %159

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %34

159:                                              ; preds = %154, %34
  %160 = load i8*, i8** %19, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %166

165:                                              ; preds = %159
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %33

166:                                              ; preds = %164
  %167 = load i32, i32* @qfalse, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %145, %73
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @CG_FileExists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
