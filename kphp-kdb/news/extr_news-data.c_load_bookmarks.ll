; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_bookmarks.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_bookmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@index_large_data_offset = common dso_local global i32 0, align 4
@small_users_number = common dso_local global i32 0, align 4
@small_users = common dso_local global %struct.TYPE_9__* null, align 8
@idx_fd = common dso_local global i32 0, align 4
@large_users_number = common dso_local global i32 0, align 4
@large_users = common dso_local global %struct.TYPE_9__* null, align 8
@small_bookmarks = common dso_local global %struct.TYPE_9__* null, align 8
@large_metafiles = common dso_local global %struct.TYPE_10__* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"small_users = %d, large_users = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_bookmarks(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @assert(i32 0)
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @index_large_data_offset, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* @small_users_number, align 4
  %11 = load i32, i32* @small_users_number, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i8* @zmalloc(i32 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** @small_users, align 8
  %18 = load i32, i32* @idx_fd, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %20 = load i32, i32* @small_users_number, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @read(i32 %18, %struct.TYPE_9__* %19, i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %70, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @small_users_number, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %37, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %53, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %30
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @small_users_number, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %62, %64
  br label %66

66:                                               ; preds = %61, %30
  %67 = phi i1 [ true, %30 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %26

73:                                               ; preds = %26
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* @large_users_number, align 4
  %85 = load i32, i32* @large_users_number, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @zmalloc(i32 %89)
  %91 = bitcast i8* %90 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** @large_users, align 8
  %92 = load i32, i32* @idx_fd, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @large_users, align 8
  %94 = load i32, i32* @large_users_number, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @read(i32 %92, %struct.TYPE_9__* %93, i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %144, %73
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @large_users_number, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** @large_users, align 8
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @large_users, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %111, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @large_users, align 8
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** @large_users, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %127, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %104
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @large_users_number, align 4
  %138 = sub nsw i32 %137, 1
  %139 = icmp eq i32 %136, %138
  br label %140

140:                                              ; preds = %135, %104
  %141 = phi i1 [ true, %104 ], [ %139, %135 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  br label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %100

147:                                              ; preds = %100
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @large_users, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %157 = load i32, i32* @small_users_number, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = mul i64 %161, 8
  %163 = trunc i64 %162 to i32
  %164 = call i8* @zmalloc(i32 %163)
  %165 = bitcast i8* %164 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** @small_bookmarks, align 8
  %166 = load i32, i32* @idx_fd, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_bookmarks, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** @small_users, align 8
  %169 = load i32, i32* @small_users_number, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = mul i64 %173, 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @read(i32 %166, %struct.TYPE_9__* %167, i32 %175)
  %177 = load i32, i32* @large_users_number, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = mul i64 4, %179
  %181 = trunc i64 %180 to i32
  %182 = call i8* @zmalloc(i32 %181)
  %183 = bitcast i8* %182 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %183, %struct.TYPE_10__** @large_metafiles, align 8
  %184 = load i64, i64* @verbosity, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %147
  %187 = load i32, i32* @stderr, align 4
  %188 = load i32, i32* @small_users_number, align 4
  %189 = load i32, i32* @large_users_number, align 4
  %190 = call i32 @fprintf(i32 %187, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %147
  %192 = load i32, i32* @large_users_number, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** @large_metafiles, align 8
  %194 = load i32, i32* @large_users_number, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  store i32 %192, i32* %197, align 4
  %198 = load i32, i32* @large_users_number, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** @large_metafiles, align 8
  %200 = load i32, i32* @large_users_number, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  store i32 %198, i32* %203, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
