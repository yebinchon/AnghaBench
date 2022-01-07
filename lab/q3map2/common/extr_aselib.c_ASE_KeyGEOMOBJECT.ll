; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyGEOMOBJECT.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyGEOMOBJECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i8*, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"*NODE_NAME\00", align 1
@ase = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@s_token = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"*NODE_PARENT\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"*NODE_TM\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"*TM_ANIMATION\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"*MESH\00", align 1
@ASE_KeyMESH = common dso_local global i32 0, align 4
@MAX_ASE_ANIMATION_FRAMES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"Too many animation frames\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"*MATERIAL_REF\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"*MESH_ANIMATION\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"..found MESH_ANIMATION\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Multiple MESH_ANIMATIONS within a single GEOM_OBJECT\00", align 1
@ASE_KeyMESH_ANIMATION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"*PROP_MOTIONBLUR\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"*PROP_CASTSHADOW\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"*PROP_RECVSHADOW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ASE_KeyGEOMOBJECT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ASE_KeyGEOMOBJECT(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* @qtrue, align 4
  %14 = call i32 @ASE_GetToken(i32 %13)
  %15 = load i64, i64* @s_token, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @VERBOSE(i8* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* @s_token, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @strcpy(i8* %22, i64 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64* @strchr(i8* %30, i8 signext 34)
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %7
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64* @strchr(i8* %38, i8 signext 34)
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %7
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @strstr(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** %3, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %52, %45
  %47 = load i8*, i8** %3, align 8
  %48 = call i64* @strchr(i8* %47, i8 signext 95)
  %49 = load i8*, i8** %3, align 8
  %50 = call i64* @strrchr(i8* %49, i8 signext 95)
  %51 = icmp ne i64* %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i8*, i8** %3, align 8
  %54 = call i64* @strrchr(i8* %53, i8 signext 95)
  store i64 0, i64* %54, align 8
  br label %46

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i8*, i8** %3, align 8
  %58 = call i64* @strrchr(i8* %57, i8 signext 32)
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8*, i8** %3, align 8
  %62 = call i64* @strrchr(i8* %61, i8 signext 32)
  store i64 0, i64* %62, align 8
  br label %56

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %40
  br label %193

65:                                               ; preds = %1
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 (...) @ASE_SkipRestOfLine()
  br label %192

71:                                               ; preds = %65
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75, %71
  %80 = call i32 @ASE_ParseBracedBlock(i32 0)
  br label %191

81:                                               ; preds = %75
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %120, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 2), align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %120, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @ASE_KeyMESH, align 4
  %90 = call i32 @ASE_ParseBracedBlock(i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* @MAX_ASE_ANIMATION_FRAMES, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %88
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i64 %108, i64* %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  br label %190

120:                                              ; preds = %85, %81
  %121 = load i8*, i8** %2, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @qfalse, align 4
  %126 = call i32 @ASE_GetToken(i32 %125)
  %127 = load i64, i64* @s_token, align 8
  %128 = call i32 @atoi(i64 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i32 %128, i32* %132, align 8
  br label %189

133:                                              ; preds = %120
  %134 = load i8*, i8** %2, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %173, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 2), align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %137
  %141 = call i32 @VERBOSE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = call i32 @Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %140
  %151 = load i32, i32* @ASE_KeyMESH_ANIMATION, align 4
  %152 = call i32 @ASE_ParseBracedBlock(i32 %151)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i64 %158, i64* %163, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 1), align 8
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ase, i32 0, i32 0), align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  br label %172

170:                                              ; preds = %137
  %171 = call i32 (...) @ASE_SkipEnclosingBraces()
  br label %172

172:                                              ; preds = %170, %150
  br label %188

173:                                              ; preds = %133
  %174 = load i8*, i8** %2, align 8
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i8*, i8** %2, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i8*, i8** %2, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181, %177, %173
  %186 = call i32 (...) @ASE_SkipRestOfLine()
  br label %187

187:                                              ; preds = %185, %181
  br label %188

188:                                              ; preds = %187, %172
  br label %189

189:                                              ; preds = %188, %124
  br label %190

190:                                              ; preds = %189, %102
  br label %191

191:                                              ; preds = %190, %79
  br label %192

192:                                              ; preds = %191, %69
  br label %193

193:                                              ; preds = %192, %64
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ASE_GetToken(i32) #1

declare dso_local i32 @VERBOSE(i8*) #1

declare dso_local i32 @strcpy(i8*, i64) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @ASE_SkipRestOfLine(...) #1

declare dso_local i32 @ASE_ParseBracedBlock(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @atoi(i64) #1

declare dso_local i32 @ASE_SkipEnclosingBraces(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
