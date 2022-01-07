; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_quote.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8* }

@__const.git_buf_quote.whitespace = private unnamed_addr constant [7 x i8] c"abtnvfr", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_quote(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca [7 x i8], align 1
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.git_buf_quote.whitespace, i32 0, i32 0), i64 7, i1 false)
  %9 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 33
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %14, %1
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %73, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %76

35:                                               ; preds = %33
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %71, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 92
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sgt i32 %69, 126
  br i1 %70, label %71, label %72

71:                                               ; preds = %62, %53, %44, %35
  store i32 1, i32* %6, align 4
  br label %76

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %24

76:                                               ; preds = %71, %33
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %209

80:                                               ; preds = %76
  %81 = call i32 @git_buf_putc(%struct.TYPE_11__* %4, i8 signext 34)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @git_buf_put(%struct.TYPE_11__* %4, i8* %84, i64 %85)
  br label %87

87:                                               ; preds = %198, %80
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %201

93:                                               ; preds = %87
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 7
  br i1 %101, label %102, label %125

102:                                              ; preds = %93
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sle i32 %109, 13
  br i1 %110, label %111, label %125

111:                                              ; preds = %102
  %112 = call i32 @git_buf_putc(%struct.TYPE_11__* %4, i8 signext 92)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = sub nsw i32 %119, 7
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @git_buf_putc(%struct.TYPE_11__* %4, i8 signext %123)
  br label %197

125:                                              ; preds = %102, %93
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 34
  br i1 %133, label %143, label %134

134:                                              ; preds = %125
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 92
  br i1 %142, label %143, label %152

143:                                              ; preds = %134, %125
  %144 = call i32 @git_buf_putc(%struct.TYPE_11__* %4, i8 signext 92)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i64, i64* %5, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @git_buf_putc(%struct.TYPE_11__* %4, i8 signext %150)
  br label %196

152:                                              ; preds = %134
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 32
  br i1 %160, label %161, label %187

161:                                              ; preds = %152
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load i64, i64* %5, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp slt i32 %168, 33
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp sgt i32 %177, 126
  br i1 %178, label %179, label %187

179:                                              ; preds = %170, %161
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @git_buf_printf(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 zeroext %185)
  br label %195

187:                                              ; preds = %170, %152
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i64, i64* %5, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = call i32 @git_buf_putc(%struct.TYPE_11__* %4, i8 signext %193)
  br label %195

195:                                              ; preds = %187, %179
  br label %196

196:                                              ; preds = %195, %143
  br label %197

197:                                              ; preds = %196, %111
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %5, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %5, align 8
  br label %87

201:                                              ; preds = %87
  %202 = call i32 @git_buf_putc(%struct.TYPE_11__* %4, i8 signext 34)
  %203 = call i64 @git_buf_oom(%struct.TYPE_11__* %4)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 -1, i32* %7, align 4
  br label %209

206:                                              ; preds = %201
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %208 = call i32 @git_buf_swap(%struct.TYPE_11__* %4, %struct.TYPE_11__* %207)
  br label %209

209:                                              ; preds = %206, %205, %79
  %210 = call i32 @git_buf_dispose(%struct.TYPE_11__* %4)
  %211 = load i32, i32* %7, align 4
  ret i32 %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_putc(%struct.TYPE_11__*, i8 signext) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_11__*, i8*, i64) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_11__*, i8*, i8 zeroext) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_11__*) #2

declare dso_local i32 @git_buf_swap(%struct.TYPE_11__*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
