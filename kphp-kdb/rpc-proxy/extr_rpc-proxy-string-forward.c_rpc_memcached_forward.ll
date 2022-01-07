; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_rpc_memcached_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_rpc_memcached_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.rpc_cluster_bucket* }
%struct.rpc_cluster_bucket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.rpc_cluster_bucket*)* }

@CC = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_memcached_forward(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.rpc_cluster_bucket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %85

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 35
  br i1 %28, label %29, label %85

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %85

35:                                               ; preds = %29
  store i32 2, i32* %8, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 35
  br label %48

48:                                               ; preds = %40, %36
  %49 = phi i1 [ false, %36 ], [ %47, %40 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %36

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %66, label %78

66:                                               ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %8, align 4
  br label %79

78:                                               ; preds = %66, %58, %53
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %85

85:                                               ; preds = %84, %29, %24, %2
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i64 @hash_key(i8* %89, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = sdiv i64 %102, %101
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %98, %85
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = srem i64 %108, %111
  %113 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %107, i64 %112
  store %struct.rpc_cluster_bucket* %113, %struct.rpc_cluster_bucket** %10, align 8
  store i32 0, i32* %11, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 2
  %116 = zext i32 %115 to i64
  %117 = call i8* @llvm.stacksave()
  store i8* %117, i8** %12, align 8
  %118 = alloca i8, i64 %116, align 16
  store i64 %116, i64* %13, align 8
  br label %119

119:                                              ; preds = %184, %104
  %120 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %10, align 8
  %121 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i64 (%struct.rpc_cluster_bucket*)*, i64 (%struct.rpc_cluster_bucket*)** %123, align 8
  %125 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %10, align 8
  %126 = call i64 %124(%struct.rpc_cluster_bucket* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %194

128:                                              ; preds = %119
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds i8, i8* %118, i64 2
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i32 @memcpy(i8* %132, i8* %136, i32 %139)
  %141 = getelementptr inbounds i8, i8* %118, i64 1
  store i8 48, i8* %141, align 1
  %142 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 48, i8* %142, align 16
  br label %143

143:                                              ; preds = %131, %128
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* @MAX_RETRIES, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 2
  store i8* null, i8** %150, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %205

151:                                              ; preds = %143
  %152 = getelementptr inbounds i8, i8* %118, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = add i8 %153, 1
  store i8 %154, i8* %152, align 1
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 10
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = getelementptr inbounds i8, i8* %118, i64 1
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i64 @hash_key(i8* %158, i32 %162)
  %164 = load i64, i64* %9, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %9, align 8
  br label %184

166:                                              ; preds = %151
  %167 = getelementptr inbounds i8, i8* %118, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 58
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = getelementptr inbounds i8, i8* %118, i64 1
  store i8 48, i8* %172, align 1
  %173 = getelementptr inbounds i8, i8* %118, i64 0
  %174 = load i8, i8* %173, align 16
  %175 = add i8 %174, 1
  store i8 %175, i8* %173, align 16
  br label %176

176:                                              ; preds = %171, %166
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 2
  %179 = load i32, i32* %8, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i64 @hash_key(i8* %118, i32 %180)
  %182 = load i64, i64* %9, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %9, align 8
  br label %184

184:                                              ; preds = %176, %157
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = srem i64 %188, %191
  %193 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %187, i64 %192
  store %struct.rpc_cluster_bucket* %193, %struct.rpc_cluster_bucket** %10, align 8
  br label %119

194:                                              ; preds = %119
  %195 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %10, align 8
  %196 = icmp ne %struct.rpc_cluster_bucket* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %10, align 8
  %199 = bitcast %struct.rpc_cluster_bucket* %198 to i8*
  %200 = load i8**, i8*** %5, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 2
  store i8* %199, i8** %201, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %205

202:                                              ; preds = %194
  %203 = load i8**, i8*** %5, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 2
  store i8* null, i8** %204, align 8
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %205

205:                                              ; preds = %202, %197, %148
  %206 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i64 @hash_key(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
