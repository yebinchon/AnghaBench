; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_SetCloneModelNumbers.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_SetCloneModelNumbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@numEntities = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"_clone\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"*%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_ins\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"_instance\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"_clonename\00", align 1
@SYS_WRN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"WARNING: Cloned entity %s referenced entity without model\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SetCloneModelNumbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetCloneModelNumbers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %53, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @numEntities, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %53

29:                                               ; preds = %20, %12
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = call i8* @ValueForKey(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %53

41:                                               ; preds = %29
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %50 = call i32 @SetKeyValue(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %40, %28
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %8

56:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %179, %56
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @numEntities, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %182

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %179

78:                                               ; preds = %69, %61
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = call i8* @ValueForKey(%struct.TYPE_4__* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = call i8* @ValueForKey(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %89, %78
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = call i8* @ValueForKey(%struct.TYPE_4__* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %106, i8** %5, align 8
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %179

114:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %175, %114
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @numEntities, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %178

119:                                              ; preds = %115
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = call i8* @ValueForKey(%struct.TYPE_4__* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %124, i8** %6, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  br label %175

131:                                              ; preds = %119
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i64 @strcmp(i8* %132, i8* %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %174

136:                                              ; preds = %131
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %138 = load i32, i32* %2, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = call i8* @ValueForKey(%struct.TYPE_4__* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %141, i8** %7, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %136
  %148 = load i32, i32* @SYS_WRN, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @Sys_FPrintf(i32 %148, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* %149)
  br label %175

151:                                              ; preds = %136
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = call i32 @atoi(i8* %153)
  store i32 %154, i32* %3, align 4
  %155 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @sprintf(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %163 = call i32 @SetKeyValue(%struct.TYPE_4__* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %162)
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  store i32* null, i32** %168, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  br label %174

174:                                              ; preds = %151, %131
  br label %175

175:                                              ; preds = %174, %147, %130
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %2, align 4
  br label %115

178:                                              ; preds = %115
  br label %179

179:                                              ; preds = %178, %113, %77
  %180 = load i32, i32* %1, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %1, align 4
  br label %57

182:                                              ; preds = %57
  ret void
}

declare dso_local i8* @ValueForKey(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SetKeyValue(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
