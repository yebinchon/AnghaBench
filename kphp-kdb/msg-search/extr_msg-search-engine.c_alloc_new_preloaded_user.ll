; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_alloc_new_preloaded_user.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_alloc_new_preloaded_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i32, i8* }

@MAX_USER_DATA = common dso_local global i32 0, align 4
@udata = common dso_local global i8* null, align 8
@LoadedUsers = common dso_local global %struct.TYPE_5__* null, align 8
@loaded_users_max = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"skipping occupied slot #%d at %p, size %d for user %d [prev=%p]\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"allocating slot #%d at %p, size %d for user %d\0A\00", align 1
@loaded_users_cnt = common dso_local global i32 0, align 4
@loaded_users_size = common dso_local global i32 0, align 4
@loaded_users_lru = common dso_local global i8* null, align 8
@MAX_LOADED_USERS = common dso_local global i32 0, align 4
@USER_DATA_BUFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"allocating new slot #%d (out of %d) at %p, size %d for user %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @alloc_new_preloaded_user(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 15
  %17 = and i32 %16, -16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAX_USER_DATA, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %203

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %201, %22
  %24 = load i8*, i8** @udata, align 8
  %25 = load i8*, i8** @udata, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = sub nsw i64 16, %26
  %28 = and i64 %27, 15
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %8, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LoadedUsers, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %10, align 8
  br label %31

31:                                               ; preds = %126, %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @loaded_users_max, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %131

35:                                               ; preds = %31
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %119

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i64, i64* @verbosity, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i32, i32* @stderr, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %49, i32 %52, i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %46, %40
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp uge i8* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = icmp uge i8* %64, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %58
  %71 = load i64, i64* @verbosity, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %75, i8* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LoadedUsers, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %10, align 8
  %89 = load i32, i32* @loaded_users_cnt, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @loaded_users_cnt, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = call i32 @memset(%struct.TYPE_5__* %91, i32 0, i32 32)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @loaded_users_size, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* @loaded_users_size, align 4
  %107 = load i8*, i8** @loaded_users_lru, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** @loaded_users_lru, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %3, align 8
  br label %203

112:                                              ; preds = %58
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  store i8* %118, i8** %8, align 8
  store i32 -1, i32* %7, align 4
  br label %125

119:                                              ; preds = %35
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %112
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 1
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %10, align 8
  br label %31

131:                                              ; preds = %31
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @loaded_users_max, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @MAX_LOADED_USERS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %196

140:                                              ; preds = %136
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8*, i8** @udata, align 8
  %146 = load i32, i32* @USER_DATA_BUFF, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = icmp ule i8* %144, %148
  br i1 %149, label %150, label %196

150:                                              ; preds = %140
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @loaded_users_max, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @loaded_users_max, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @loaded_users_max, align 4
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i64, i64* @verbosity, align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i32, i32* @stderr, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @loaded_users_max, align 4
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %4, align 4
  %167 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %163, i8* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %160, %157
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LoadedUsers, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  store %struct.TYPE_5__* %172, %struct.TYPE_5__** %10, align 8
  %173 = load i32, i32* @loaded_users_cnt, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* @loaded_users_cnt, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %176 = call i32 @memset(%struct.TYPE_5__* %175, i32 0, i32 32)
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @loaded_users_size, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* @loaded_users_size, align 4
  %191 = load i8*, i8** @loaded_users_lru, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** @loaded_users_lru, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %195, %struct.TYPE_5__** %3, align 8
  br label %203

196:                                              ; preds = %140, %136
  %197 = load i32, i32* @loaded_users_cnt, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  br label %202

200:                                              ; preds = %196
  store i32 0, i32* @loaded_users_size, align 4
  store i32 0, i32* @loaded_users_cnt, align 4
  store i32 0, i32* @loaded_users_max, align 4
  br label %201

201:                                              ; preds = %200
  br i1 true, label %23, label %202

202:                                              ; preds = %201, %199
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %203

203:                                              ; preds = %202, %168, %80, %21
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %204
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
