; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i64, i32, i32, i64* }

@cmd_set = common dso_local global i32 0, align 4
@SEC_IN_MONTH = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, flags = %d, exp_time = %d\0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"found old entry x = %d\0A\00", align 1
@mct_replace = common dso_local global i32 0, align 4
@total_items = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"created new entry x = %d\0A\00", align 1
@stats_now = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @cmd_set, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @cmd_set, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* @SEC_IN_MONTH, align 4
  store i32 %25, i32* %14, align 4
  br label %43

26:                                               ; preds = %7
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @SEC_IN_MONTH, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i64, i64* @now, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @SEC_IN_MONTH, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @SEC_IN_MONTH, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %39, %30
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -2, i32* %8, align 4
  br label %184

47:                                               ; preds = %43
  %48 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %49 = call i64 @get_utime(i32 %48)
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i64, i64* @verbosity, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %47
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @MAX_VALUE_LEN, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %183

68:                                               ; preds = %64
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @get_hash(i8* %69, i32 %70)
  store i64 %71, i64* %16, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @get_entry(i8* %72, i32 %73, i64 %74)
  store i32 %75, i32* %17, align 4
  %76 = call i32 @ADD_OPER(i32 0)
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %106

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @mct_add, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 -2, i32* %8, align 4
  br label %184

84:                                               ; preds = %79
  %85 = load i64, i64* @verbosity, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %17, align 4
  %93 = call %struct.TYPE_3__* @get_entry_ptr(i32 %92)
  store %struct.TYPE_3__* %93, %struct.TYPE_3__** %18, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 6
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  %101 = call i32 @zzfree(i64* %96, i32 %100)
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @del_entry_used(i32 %102)
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @del_entry_time(i32 %104)
  br label %146

106:                                              ; preds = %68
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @mct_replace, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 -2, i32* %8, align 4
  br label %184

111:                                              ; preds = %106
  %112 = load i32, i32* @total_items, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @total_items, align 4
  %114 = call i32 (...) @get_new_entry()
  store i32 %114, i32* %17, align 4
  %115 = load i64, i64* @verbosity, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i32, i32* %17, align 4
  %123 = call %struct.TYPE_3__* @get_entry_ptr(i32 %122)
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %18, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i8* @zzmalloc(i32 %125)
  store i8* %126, i8** %19, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @memcpy(i8* %127, i8* %128, i32 %129)
  %131 = load i8*, i8** %19, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %19, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @add_entry(i32 %144)
  br label %146

146:                                              ; preds = %121, %91
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  %149 = call i8* @zzmalloc(i32 %148)
  %150 = bitcast i8* %149 to i64*
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 6
  store i64* %150, i64** %152, align 8
  %153 = load %struct.connection*, %struct.connection** %9, align 8
  %154 = getelementptr inbounds %struct.connection, %struct.connection* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 6
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @read_in(i32* %154, i64* %157, i32 %158)
  %160 = load i32, i32* %15, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  store i64 0, i64* %169, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %17, align 4
  %180 = call i32 @add_entry_used(i32 %179)
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @add_entry_time(i32 %181)
  store i32 1, i32* %8, align 4
  br label %184

183:                                              ; preds = %64
  store i32 -2, i32* %8, align 4
  br label %184

184:                                              ; preds = %183, %146, %110, %83, %46
  %185 = load i32, i32* %8, align 4
  ret i32 %185
}

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @get_hash(i8*, i32) #1

declare dso_local i32 @get_entry(i8*, i32, i64) #1

declare dso_local i32 @ADD_OPER(i32) #1

declare dso_local %struct.TYPE_3__* @get_entry_ptr(i32) #1

declare dso_local i32 @zzfree(i64*, i32) #1

declare dso_local i32 @del_entry_used(i32) #1

declare dso_local i32 @del_entry_time(i32) #1

declare dso_local i32 @get_new_entry(...) #1

declare dso_local i8* @zzmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @add_entry(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @add_entry_used(i32) #1

declare dso_local i32 @add_entry_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
