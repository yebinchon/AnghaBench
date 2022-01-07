; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_handle_conflict.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_handle_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.TYPE_2__ = type { i32 (i32*, i8*, i64)* }
%struct.rerere_io = type { i32 (%struct.strbuf*, %struct.rerere_io*)* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.rerere_io*, i32, i32*)* @handle_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_conflict(%struct.strbuf* %0, %struct.rerere_io* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.rerere_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store %struct.rerere_io* %1, %struct.rerere_io** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %18 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 -1, i32* %14, align 4
  br label %19

19:                                               ; preds = %160, %4
  %20 = load %struct.rerere_io*, %struct.rerere_io** %6, align 8
  %21 = getelementptr inbounds %struct.rerere_io, %struct.rerere_io* %20, i32 0, i32 0
  %22 = load i32 (%struct.strbuf*, %struct.rerere_io*)*, i32 (%struct.strbuf*, %struct.rerere_io*)** %21, align 8
  %23 = load %struct.rerere_io*, %struct.rerere_io** %6, align 8
  %24 = call i32 %22(%struct.strbuf* %12, %struct.rerere_io* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %161

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @is_cmarker(i8* %29, i8 signext 60, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.rerere_io*, %struct.rerere_io** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @handle_conflict(%struct.strbuf* %13, %struct.rerere_io* %34, i32 %35, i32* null)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %161

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @strbuf_addbuf(%struct.strbuf* %10, %struct.strbuf* %13)
  br label %46

44:                                               ; preds = %39
  %45 = call i32 @strbuf_addbuf(%struct.strbuf* %11, %struct.strbuf* %13)
  br label %46

46:                                               ; preds = %44, %42
  %47 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %160

48:                                               ; preds = %27
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @is_cmarker(i8* %50, i8 signext 124, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %161

58:                                               ; preds = %54
  store i32 2, i32* %9, align 4
  br label %159

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @is_cmarker(i8* %61, i8 signext 61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %161

72:                                               ; preds = %68, %65
  store i32 1, i32* %9, align 4
  br label %158

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @is_cmarker(i8* %75, i8 signext 62, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %140

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %161

83:                                               ; preds = %79
  %84 = call i64 @strbuf_cmp(%struct.strbuf* %10, %struct.strbuf* %11)
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @strbuf_swap(%struct.strbuf* %10, %struct.strbuf* %11)
  br label %88

88:                                               ; preds = %86, %83
  store i32 1, i32* %14, align 4
  %89 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @rerere_strbuf_putconflict(%struct.strbuf* %89, i8 signext 60, i32 %90)
  %92 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %93 = call i32 @strbuf_addbuf(%struct.strbuf* %92, %struct.strbuf* %10)
  %94 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @rerere_strbuf_putconflict(%struct.strbuf* %94, i8 signext 61, i32 %95)
  %97 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %98 = call i32 @strbuf_addbuf(%struct.strbuf* %97, %struct.strbuf* %11)
  %99 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @rerere_strbuf_putconflict(%struct.strbuf* %99, i8 signext 62, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %139

104:                                              ; preds = %88
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %106, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  br label %116

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %112
  %117 = phi i8* [ %114, %112 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %115 ]
  %118 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  %121 = call i32 %107(i32* %108, i8* %117, i64 %120)
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %123, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %116
  %130 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  br label %133

132:                                              ; preds = %116
  br label %133

133:                                              ; preds = %132, %129
  %134 = phi i8* [ %131, %129 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %132 ]
  %135 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  %138 = call i32 %124(i32* %125, i8* %134, i64 %137)
  br label %139

139:                                              ; preds = %133, %88
  br label %161

140:                                              ; preds = %73
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32 @strbuf_addbuf(%struct.strbuf* %10, %struct.strbuf* %12)
  br label %156

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %155

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @strbuf_addbuf(%struct.strbuf* %11, %struct.strbuf* %12)
  br label %154

154:                                              ; preds = %152, %149
  br label %155

155:                                              ; preds = %154, %148
  br label %156

156:                                              ; preds = %155, %143
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %72
  br label %159

159:                                              ; preds = %158, %58
  br label %160

160:                                              ; preds = %159, %46
  br label %19

161:                                              ; preds = %139, %82, %71, %57, %38, %19
  %162 = call i32 @strbuf_release(%struct.strbuf* %10)
  %163 = call i32 @strbuf_release(%struct.strbuf* %11)
  %164 = call i32 @strbuf_release(%struct.strbuf* %12)
  %165 = load i32, i32* %14, align 4
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_cmarker(i8*, i8 signext, i32) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @strbuf_cmp(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @rerere_strbuf_putconflict(%struct.strbuf*, i8 signext, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
