; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32 }

@verbosity = common dso_local global i64 0, align 8
@user_cnt = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_7__* null, align 8
@types = common dso_local global i64* null, align 8
@sim_header = common dso_local global %struct.TYPE_6__* null, align 8
@index_mode = common dso_local global i32 0, align 4
@dumps = common dso_local global i64* null, align 8
@h_users = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Memory left: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @verbosity, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %177

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %11, %7
  %9 = call i32 (...) @user_LRU_unload()
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %8

12:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @user_cnt, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @hset_int_free(i32* %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %13

27:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %28

28:                                               ; preds = %158, %27
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %161

31:                                               ; preds = %28
  %32 = load i64*, i64** @types, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %149

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sim_header, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 13
  %48 = call i32 @vector_int_free(i32* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 12
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @dl_free(%struct.TYPE_7__* %51, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %38
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 11
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @dl_free(%struct.TYPE_7__* %64, i32 %70)
  br label %92

72:                                               ; preds = %38
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 10
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @dl_free(%struct.TYPE_7__* %75, i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 9
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @dl_free(%struct.TYPE_7__* %84, i32 %90)
  br label %92

92:                                               ; preds = %72, %61
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %144

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dl_free(%struct.TYPE_7__* %100, i32 %103)
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %122, %97
  %107 = load i32, i32* %2, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 7
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dl_strfree(i32 %120)
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  br label %106

125:                                              ; preds = %106
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @index_mode, align 4
  %131 = add nsw i32 %130, 1
  %132 = mul nsw i32 %129, %131
  %133 = load i32, i32* @index_mode, align 4
  %134 = mul nsw i32 1024000, %133
  %135 = add nsw i32 %132, %134
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = mul i64 8, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 @dl_free(%struct.TYPE_7__* %128, i32 %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 6
  %143 = call i32 @map_string_int_free(i32* %142)
  br label %148

144:                                              ; preds = %92
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 5
  %147 = call i32 @map_int_int_free(i32* %146)
  br label %148

148:                                              ; preds = %144, %125
  br label %149

149:                                              ; preds = %148, %31
  %150 = load i64*, i64** @dumps, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %149
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %1, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %1, align 4
  br label %28

161:                                              ; preds = %28
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %163 = load i32, i32* @user_cnt, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 4, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @dl_free(%struct.TYPE_7__* %162, i32 %166)
  %168 = call i32 @hset_intp_free(i32* @h_users)
  %169 = call i32 @free_header(i32* @header)
  %170 = load i32, i32* @stderr, align 4
  %171 = call i64 (...) @dl_get_memory_used()
  %172 = call i32 @fprintf(i32 %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %171)
  %173 = call i64 (...) @dl_get_memory_used()
  %174 = icmp eq i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  br label %177

177:                                              ; preds = %161, %0
  ret void
}

declare dso_local i32 @user_LRU_unload(...) #1

declare dso_local i32 @hset_int_free(i32*) #1

declare dso_local i32 @vector_int_free(i32*) #1

declare dso_local i32 @dl_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dl_strfree(i32) #1

declare dso_local i32 @map_string_int_free(i32*) #1

declare dso_local i32 @map_int_int_free(i32*) #1

declare dso_local i32 @hset_intp_free(i32*) #1

declare dso_local i32 @free_header(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
