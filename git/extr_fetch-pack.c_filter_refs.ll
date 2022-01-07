; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_filter_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_filter_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidset = type { i32 }
%struct.fetch_pack_args = type { i32, i64 }
%struct.ref = type { i8*, %struct.ref*, i32, i32 }

@OIDSET_INIT = common dso_local global %struct.oidset zeroinitializer, align 4
@allow_unadvertised_object_request = common dso_local global i32 0, align 4
@ALLOW_TIP_SHA1 = common dso_local global i32 0, align 4
@ALLOW_REACHABLE_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@REF_MATCHED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@REF_UNADVERTISED_NOT_ALLOWED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_pack_args*, %struct.ref**, %struct.ref**, i32)* @filter_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_refs(%struct.fetch_pack_args* %0, %struct.ref** %1, %struct.ref** %2, i32 %3) #0 {
  %5 = alloca %struct.fetch_pack_args*, align 8
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.ref**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.ref**, align 8
  %11 = alloca %struct.ref*, align 8
  %12 = alloca %struct.ref*, align 8
  %13 = alloca %struct.ref*, align 8
  %14 = alloca %struct.oidset, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %5, align 8
  store %struct.ref** %1, %struct.ref*** %6, align 8
  store %struct.ref** %2, %struct.ref*** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.ref* null, %struct.ref** %9, align 8
  store %struct.ref** %9, %struct.ref*** %10, align 8
  store %struct.ref* null, %struct.ref** %11, align 8
  %19 = bitcast %struct.oidset* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.oidset* @OIDSET_INIT to i8*), i64 4, i1 false)
  %20 = load i32, i32* @allow_unadvertised_object_request, align 4
  %21 = load i32, i32* @ALLOW_TIP_SHA1, align 4
  %22 = load i32, i32* @ALLOW_REACHABLE_SHA1, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.ref**, %struct.ref*** %6, align 8
  %29 = load %struct.ref*, %struct.ref** %28, align 8
  store %struct.ref* %29, %struct.ref** %12, align 8
  br label %30

30:                                               ; preds = %123, %4
  %31 = load %struct.ref*, %struct.ref** %12, align 8
  %32 = icmp ne %struct.ref* %31, null
  br i1 %32, label %33, label %125

33:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  %34 = load %struct.ref*, %struct.ref** %12, align 8
  %35 = getelementptr inbounds %struct.ref, %struct.ref* %34, i32 0, i32 1
  %36 = load %struct.ref*, %struct.ref** %35, align 8
  store %struct.ref* %36, %struct.ref** %13, align 8
  %37 = load %struct.ref*, %struct.ref** %12, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @starts_with(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.ref*, %struct.ref** %12, align 8
  %44 = getelementptr inbounds %struct.ref, %struct.ref* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @check_refname_format(i32 %45, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.ref*, %struct.ref** %12, align 8
  %50 = call i32 @free_one_ref(%struct.ref* %49)
  br label %123

51:                                               ; preds = %42, %33
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  %57 = load %struct.ref*, %struct.ref** %12, align 8
  %58 = getelementptr inbounds %struct.ref, %struct.ref* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ref**, %struct.ref*** %7, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ref*, %struct.ref** %60, i64 %62
  %64 = load %struct.ref*, %struct.ref** %63, align 8
  %65 = getelementptr inbounds %struct.ref, %struct.ref* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcmp(i32 %59, i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %86

71:                                               ; preds = %56
  %72 = load i32, i32* %18, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  store i32 1, i32* %17, align 4
  %75 = load i8*, i8** @REF_MATCHED, align 8
  %76 = load %struct.ref**, %struct.ref*** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ref*, %struct.ref** %76, i64 %78
  %80 = load %struct.ref*, %struct.ref** %79, align 8
  %81 = getelementptr inbounds %struct.ref, %struct.ref* %80, i32 0, i32 0
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %52

86:                                               ; preds = %70, %52
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %91 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %96 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.ref*, %struct.ref** %12, align 8
  %101 = getelementptr inbounds %struct.ref, %struct.ref* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @starts_with(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99, %94
  store i32 1, i32* %17, align 4
  br label %106

106:                                              ; preds = %105, %99, %89, %86
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.ref*, %struct.ref** %12, align 8
  %112 = load %struct.ref**, %struct.ref*** %10, align 8
  store %struct.ref* %111, %struct.ref** %112, align 8
  %113 = load %struct.ref*, %struct.ref** %12, align 8
  %114 = getelementptr inbounds %struct.ref, %struct.ref* %113, i32 0, i32 1
  store %struct.ref* null, %struct.ref** %114, align 8
  %115 = load %struct.ref*, %struct.ref** %12, align 8
  %116 = getelementptr inbounds %struct.ref, %struct.ref* %115, i32 0, i32 1
  store %struct.ref** %116, %struct.ref*** %10, align 8
  br label %122

117:                                              ; preds = %107
  %118 = load %struct.ref*, %struct.ref** %11, align 8
  %119 = load %struct.ref*, %struct.ref** %12, align 8
  %120 = getelementptr inbounds %struct.ref, %struct.ref* %119, i32 0, i32 1
  store %struct.ref* %118, %struct.ref** %120, align 8
  %121 = load %struct.ref*, %struct.ref** %12, align 8
  store %struct.ref* %121, %struct.ref** %11, align 8
  br label %122

122:                                              ; preds = %117, %110
  br label %123

123:                                              ; preds = %122, %48
  %124 = load %struct.ref*, %struct.ref** %13, align 8
  store %struct.ref* %124, %struct.ref** %12, align 8
  br label %30

125:                                              ; preds = %30
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %125
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %148, %128
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load %struct.ref**, %struct.ref*** %7, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ref*, %struct.ref** %134, i64 %136
  %138 = load %struct.ref*, %struct.ref** %137, align 8
  store %struct.ref* %138, %struct.ref** %12, align 8
  %139 = load %struct.ref*, %struct.ref** %12, align 8
  %140 = call i32 @is_unmatched_ref(%struct.ref* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  br label %148

143:                                              ; preds = %133
  %144 = load %struct.ref*, %struct.ref** %11, align 8
  %145 = call i32 @add_refs_to_oidset(%struct.oidset* %14, %struct.ref* %144)
  %146 = load %struct.ref*, %struct.ref** %9, align 8
  %147 = call i32 @add_refs_to_oidset(%struct.oidset* %14, %struct.ref* %146)
  br label %151

148:                                              ; preds = %142
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %129

151:                                              ; preds = %143, %129
  br label %152

152:                                              ; preds = %151, %125
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %190, %152
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %153
  %158 = load %struct.ref**, %struct.ref*** %7, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ref*, %struct.ref** %158, i64 %160
  %162 = load %struct.ref*, %struct.ref** %161, align 8
  store %struct.ref* %162, %struct.ref** %12, align 8
  %163 = load %struct.ref*, %struct.ref** %12, align 8
  %164 = call i32 @is_unmatched_ref(%struct.ref* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %157
  br label %190

167:                                              ; preds = %157
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load %struct.ref*, %struct.ref** %12, align 8
  %172 = getelementptr inbounds %struct.ref, %struct.ref* %171, i32 0, i32 2
  %173 = call i64 @oidset_contains(%struct.oidset* %14, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170, %167
  %176 = load i8*, i8** @REF_MATCHED, align 8
  %177 = load %struct.ref*, %struct.ref** %12, align 8
  %178 = getelementptr inbounds %struct.ref, %struct.ref* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ref*, %struct.ref** %12, align 8
  %180 = call %struct.ref* @copy_ref(%struct.ref* %179)
  %181 = load %struct.ref**, %struct.ref*** %10, align 8
  store %struct.ref* %180, %struct.ref** %181, align 8
  %182 = load %struct.ref**, %struct.ref*** %10, align 8
  %183 = load %struct.ref*, %struct.ref** %182, align 8
  %184 = getelementptr inbounds %struct.ref, %struct.ref* %183, i32 0, i32 1
  store %struct.ref** %184, %struct.ref*** %10, align 8
  br label %189

185:                                              ; preds = %170
  %186 = load i8*, i8** @REF_UNADVERTISED_NOT_ALLOWED, align 8
  %187 = load %struct.ref*, %struct.ref** %12, align 8
  %188 = getelementptr inbounds %struct.ref, %struct.ref* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %185, %175
  br label %190

190:                                              ; preds = %189, %166
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %153

193:                                              ; preds = %153
  %194 = call i32 @oidset_clear(%struct.oidset* %14)
  %195 = load %struct.ref*, %struct.ref** %11, align 8
  %196 = call i32 @free_refs(%struct.ref* %195)
  %197 = load %struct.ref*, %struct.ref** %9, align 8
  %198 = load %struct.ref**, %struct.ref*** %6, align 8
  store %struct.ref* %197, %struct.ref** %198, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @starts_with(i32, i8*) #2

declare dso_local i64 @check_refname_format(i32, i32) #2

declare dso_local i32 @free_one_ref(%struct.ref*) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i32 @is_unmatched_ref(%struct.ref*) #2

declare dso_local i32 @add_refs_to_oidset(%struct.oidset*, %struct.ref*) #2

declare dso_local i64 @oidset_contains(%struct.oidset*, i32*) #2

declare dso_local %struct.ref* @copy_ref(%struct.ref*) #2

declare dso_local i32 @oidset_clear(%struct.oidset*) #2

declare dso_local i32 @free_refs(%struct.ref*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
