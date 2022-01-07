; ModuleID = '/home/carl/AnghaBench/git/extr_send-pack.c_pack_objects.c'
source_filename = "/home/carl/AnghaBench/git/extr_send-pack.c_pack_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32 }
%struct.ref = type { %struct.ref*, i32, i32 }
%struct.oid_array = type { i32, i32* }
%struct.send_pack_args = type { i64, i64, i64, i64, i64 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"pack-objects\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"--all-progress-implied\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--revs\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"--thin\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"--delta-base-offset\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"--progress\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"--shallow\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"git pack-objects failed\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"error writing to pack-objects\00", align 1
@LARGE_PACKET_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"pack-objects died of signal %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ref*, %struct.oid_array*, %struct.send_pack_args*)* @pack_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_objects(i32 %0, %struct.ref* %1, %struct.oid_array* %2, %struct.send_pack_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.oid_array*, align 8
  %9 = alloca %struct.send_pack_args*, align 8
  %10 = alloca %struct.child_process, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.ref* %1, %struct.ref** %7, align 8
  store %struct.oid_array* %2, %struct.oid_array** %8, align 8
  store %struct.send_pack_args* %3, %struct.send_pack_args** %9, align 8
  %16 = bitcast %struct.child_process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %18 = call i32 @argv_array_push(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %20 = call i32 @argv_array_push(i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %22 = call i32 @argv_array_push(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %24 = call i32 @argv_array_push(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.send_pack_args*, %struct.send_pack_args** %9, align 8
  %26 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %31 = call i32 @argv_array_push(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %4
  %33 = load %struct.send_pack_args*, %struct.send_pack_args** %9, align 8
  %34 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %39 = call i32 @argv_array_push(i32* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.send_pack_args*, %struct.send_pack_args** %9, align 8
  %42 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.send_pack_args*, %struct.send_pack_args** %9, align 8
  %47 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45, %40
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %52 = call i32 @argv_array_push(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.send_pack_args*, %struct.send_pack_args** %9, align 8
  %55 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %60 = call i32 @argv_array_push(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* @the_repository, align 4
  %63 = call i64 @is_repository_shallow(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %67 = call i32 @argv_array_push(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %61
  %69 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  store i32 -1, i32* %69, align 4
  %70 = load %struct.send_pack_args*, %struct.send_pack_args** %9, align 8
  %71 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ -1, %74 ], [ %76, %75 ]
  %79 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  store i32 1, i32* %80, align 4
  %81 = call i64 @start_command(%struct.child_process* %10)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @die_errno(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %77
  %86 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @xfdopen(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %88, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %104, %85
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.oid_array*, %struct.oid_array** %8, align 8
  %92 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.oid_array*, %struct.oid_array** %8, align 8
  %97 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @feed_object(i32* %101, i32* %102, i32 1)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %89

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %131, %107
  %109 = load %struct.ref*, %struct.ref** %7, align 8
  %110 = icmp ne %struct.ref* %109, null
  br i1 %110, label %111, label %135

111:                                              ; preds = %108
  %112 = load %struct.ref*, %struct.ref** %7, align 8
  %113 = getelementptr inbounds %struct.ref, %struct.ref* %112, i32 0, i32 2
  %114 = call i32 @is_null_oid(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.ref*, %struct.ref** %7, align 8
  %118 = getelementptr inbounds %struct.ref, %struct.ref* %117, i32 0, i32 2
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @feed_object(i32* %118, i32* %119, i32 1)
  br label %121

121:                                              ; preds = %116, %111
  %122 = load %struct.ref*, %struct.ref** %7, align 8
  %123 = getelementptr inbounds %struct.ref, %struct.ref* %122, i32 0, i32 1
  %124 = call i32 @is_null_oid(i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load %struct.ref*, %struct.ref** %7, align 8
  %128 = getelementptr inbounds %struct.ref, %struct.ref* %127, i32 0, i32 1
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @feed_object(i32* %128, i32* %129, i32 0)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.ref*, %struct.ref** %7, align 8
  %133 = getelementptr inbounds %struct.ref, %struct.ref* %132, i32 0, i32 0
  %134 = load %struct.ref*, %struct.ref** %133, align 8
  store %struct.ref* %134, %struct.ref** %7, align 8
  br label %108

135:                                              ; preds = %108
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @fflush(i32* %136)
  %138 = load i32*, i32** %11, align 8
  %139 = call i64 @ferror(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 @die_errno(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %135
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @fclose(i32* %144)
  %146 = load %struct.send_pack_args*, %struct.send_pack_args** %9, align 8
  %147 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %175

150:                                              ; preds = %143
  %151 = load i32, i32* @LARGE_PACKET_MAX, align 4
  %152 = call i8* @xmalloc(i32 %151)
  store i8* %152, i8** %14, align 8
  br label %153

153:                                              ; preds = %150, %162
  %154 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %14, align 8
  %157 = load i32, i32* @LARGE_PACKET_MAX, align 4
  %158 = call i64 @xread(i32 %155, i8* %156, i32 %157)
  store i64 %158, i64* %15, align 8
  %159 = load i64, i64* %15, align 8
  %160 = icmp sle i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %168

162:                                              ; preds = %153
  %163 = load i32, i32* %6, align 4
  %164 = load i8*, i8** %14, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i32, i32* @LARGE_PACKET_MAX, align 4
  %167 = call i32 @send_sideband(i32 %163, i32 -1, i8* %164, i64 %165, i32 %166)
  br label %153

168:                                              ; preds = %161
  %169 = load i8*, i8** %14, align 8
  %170 = call i32 @free(i8* %169)
  %171 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @close(i32 %172)
  %174 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  store i32 -1, i32* %174, align 4
  br label %175

175:                                              ; preds = %168, %143
  %176 = call i32 @finish_command(%struct.child_process* %10)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  %181 = icmp sgt i32 %180, 128
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 141
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %186, 128
  %188 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %185, %182, %179
  store i32 -1, i32* %5, align 4
  br label %191

190:                                              ; preds = %175
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %189
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i64 @is_repository_shallow(i32) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32* @xfdopen(i32, i8*) #2

declare dso_local i32 @feed_object(i32*, i32*, i32) #2

declare dso_local i32 @is_null_oid(i32*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @xmalloc(i32) #2

declare dso_local i64 @xread(i32, i8*, i32) #2

declare dso_local i32 @send_sideband(i32, i32, i8*, i64, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

declare dso_local i32 @error(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
