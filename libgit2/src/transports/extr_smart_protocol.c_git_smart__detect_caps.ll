; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_git_smart__detect_caps.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_git_smart__detect_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@git_smart__ofs_delta_enabled = common dso_local global i64 0, align 8
@GIT_CAP_OFS_DELTA = common dso_local global i32 0, align 4
@GIT_CAP_MULTI_ACK_DETAILED = common dso_local global i32 0, align 4
@GIT_CAP_MULTI_ACK = common dso_local global i32 0, align 4
@GIT_CAP_INCLUDE_TAG = common dso_local global i32 0, align 4
@GIT_CAP_SIDE_BAND_64K = common dso_local global i32 0, align 4
@GIT_CAP_SIDE_BAND = common dso_local global i32 0, align 4
@GIT_CAP_DELETE_REFS = common dso_local global i32 0, align 4
@GIT_CAP_THIN_PACK = common dso_local global i32 0, align 4
@GIT_CAP_SYMREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_smart__detect_caps(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %18, i32* %4, align 4
  br label %181

19:                                               ; preds = %12
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %177, %176, %154, %139, %124, %109, %94, %79, %64, %49, %19
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %180

33:                                               ; preds = %31
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i64, i64* @git_smart__ofs_delta_enabled, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @GIT_CAP_OFS_DELTA, align 4
  %47 = call i32 @git__prefixcmp(i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @GIT_CAP_OFS_DELTA, align 4
  %55 = call i32 @strlen(i32 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %8, align 8
  br label %23

59:                                               ; preds = %44, %41
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* @GIT_CAP_MULTI_ACK_DETAILED, align 4
  %62 = call i32 @git__prefixcmp(i8* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* @GIT_CAP_MULTI_ACK_DETAILED, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = load i8*, i8** %8, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %8, align 8
  br label %23

74:                                               ; preds = %59
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* @GIT_CAP_MULTI_ACK, align 4
  %77 = call i32 @git__prefixcmp(i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* @GIT_CAP_MULTI_ACK, align 4
  %85 = call i32 @strlen(i32 %84)
  %86 = load i8*, i8** %8, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %8, align 8
  br label %23

89:                                               ; preds = %74
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* @GIT_CAP_INCLUDE_TAG, align 4
  %92 = call i32 @git__prefixcmp(i8* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @GIT_CAP_INCLUDE_TAG, align 4
  %100 = call i32 @strlen(i32 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %8, align 8
  br label %23

104:                                              ; preds = %89
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* @GIT_CAP_SIDE_BAND_64K, align 4
  %107 = call i32 @git__prefixcmp(i8* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  store i32 1, i32* %111, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* @GIT_CAP_SIDE_BAND_64K, align 4
  %115 = call i32 @strlen(i32 %114)
  %116 = load i8*, i8** %8, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %8, align 8
  br label %23

119:                                              ; preds = %104
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* @GIT_CAP_SIDE_BAND, align 4
  %122 = call i32 @git__prefixcmp(i8* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 6
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  %129 = load i32, i32* @GIT_CAP_SIDE_BAND, align 4
  %130 = call i32 @strlen(i32 %129)
  %131 = load i8*, i8** %8, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %8, align 8
  br label %23

134:                                              ; preds = %119
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* @GIT_CAP_DELETE_REFS, align 4
  %137 = call i32 @git__prefixcmp(i8* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 7
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 4
  %144 = load i32, i32* @GIT_CAP_DELETE_REFS, align 4
  %145 = call i32 @strlen(i32 %144)
  %146 = load i8*, i8** %8, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %8, align 8
  br label %23

149:                                              ; preds = %134
  %150 = load i8*, i8** %8, align 8
  %151 = load i32, i32* @GIT_CAP_THIN_PACK, align 4
  %152 = call i32 @git__prefixcmp(i8* %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 8
  store i32 1, i32* %156, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 4
  %159 = load i32, i32* @GIT_CAP_THIN_PACK, align 4
  %160 = call i32 @strlen(i32 %159)
  %161 = load i8*, i8** %8, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %8, align 8
  br label %23

164:                                              ; preds = %149
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* @GIT_CAP_SYMREF, align 4
  %167 = call i32 @git__prefixcmp(i8* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %164
  %170 = load i32*, i32** %7, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @append_symref(i8** %8, i32* %170, i8* %171)
  store i32 %172, i32* %9, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %4, align 4
  br label %181

176:                                              ; preds = %169
  br label %23

177:                                              ; preds = %164
  %178 = load i8*, i8** %8, align 8
  %179 = call i8* @strchr(i8* %178, i8 signext 32)
  store i8* %179, i8** %8, align 8
  br label %23

180:                                              ; preds = %31
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %174, %17
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @git__prefixcmp(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @append_symref(i8**, i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
