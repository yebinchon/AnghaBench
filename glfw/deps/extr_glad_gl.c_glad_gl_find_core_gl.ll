; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_find_core_gl.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_find_core_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"OpenGL ES-CM \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OpenGL ES-CL \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"OpenGL ES \00", align 1
@__const.glad_gl_find_core_gl.prefixes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@GL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@GLAD_GL_VERSION_1_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_2 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_3 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_4 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_5 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_2_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_2_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_2 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @glad_gl_find_core_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glad_gl_find_core_gl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i64, align 8
  %8 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.glad_gl_find_core_gl.prefixes to i8*), i64 32, i1 false)
  %9 = load i32, i32* @GL_VERSION, align 4
  %10 = call i64 @glGetString(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %182

15:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @strncmp(i8* %28, i8* %32, i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load i64, i64* %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %5, align 8
  br label %44

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %16

44:                                               ; preds = %36, %16
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @GLAD_IMPL_UTIL_SSCANF(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %3, i32* %4)
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %3, align 4
  %54 = icmp sgt i32 %53, 1
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ true, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* @GLAD_GL_VERSION_1_0, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 1
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ true, %60 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* @GLAD_GL_VERSION_1_1, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %77, label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %3, align 4
  %76 = icmp sgt i32 %75, 1
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ true, %71 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* @GLAD_GL_VERSION_1_2, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = icmp sge i32 %83, 3
  br i1 %84, label %88, label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %3, align 4
  %87 = icmp sgt i32 %86, 1
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i1 [ true, %82 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* @GLAD_GL_VERSION_1_3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 4
  br i1 %95, label %99, label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %3, align 4
  %98 = icmp sgt i32 %97, 1
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ true, %93 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* @GLAD_GL_VERSION_1_4, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %105, 5
  br i1 %106, label %110, label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %3, align 4
  %109 = icmp sgt i32 %108, 1
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ true, %104 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* @GLAD_GL_VERSION_1_5, align 4
  %113 = load i32, i32* %3, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %3, align 4
  %120 = icmp sgt i32 %119, 2
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ true, %115 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* @GLAD_GL_VERSION_2_0, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %4, align 4
  %128 = icmp sge i32 %127, 1
  br i1 %128, label %132, label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %3, align 4
  %131 = icmp sgt i32 %130, 2
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i1 [ true, %126 ], [ %131, %129 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* @GLAD_GL_VERSION_2_1, align 4
  %135 = load i32, i32* %3, align 4
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %4, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %3, align 4
  %142 = icmp sgt i32 %141, 3
  br label %143

143:                                              ; preds = %140, %137
  %144 = phi i1 [ true, %137 ], [ %142, %140 ]
  %145 = zext i1 %144 to i32
  store i32 %145, i32* @GLAD_GL_VERSION_3_0, align 4
  %146 = load i32, i32* %3, align 4
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %4, align 4
  %150 = icmp sge i32 %149, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %3, align 4
  %153 = icmp sgt i32 %152, 3
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i1 [ true, %148 ], [ %153, %151 ]
  %156 = zext i1 %155 to i32
  store i32 %156, i32* @GLAD_GL_VERSION_3_1, align 4
  %157 = load i32, i32* %3, align 4
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* %4, align 4
  %161 = icmp sge i32 %160, 2
  br i1 %161, label %165, label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %3, align 4
  %164 = icmp sgt i32 %163, 3
  br label %165

165:                                              ; preds = %162, %159
  %166 = phi i1 [ true, %159 ], [ %164, %162 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* @GLAD_GL_VERSION_3_2, align 4
  %168 = load i32, i32* %3, align 4
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %4, align 4
  %172 = icmp sge i32 %171, 3
  br i1 %172, label %176, label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %3, align 4
  %175 = icmp sgt i32 %174, 3
  br label %176

176:                                              ; preds = %173, %170
  %177 = phi i1 [ true, %170 ], [ %175, %173 ]
  %178 = zext i1 %177 to i32
  store i32 %178, i32* @GLAD_GL_VERSION_3_3, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @GLAD_MAKE_VERSION(i32 %179, i32 %180)
  store i32 %181, i32* %1, align 4
  br label %182

182:                                              ; preds = %176, %14
  %183 = load i32, i32* %1, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @glGetString(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @GLAD_IMPL_UTIL_SSCANF(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @GLAD_MAKE_VERSION(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
