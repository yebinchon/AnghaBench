; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }

@binlog_disabled = common dso_local global i32 0, align 4
@protected_mode = common dso_local global i64 0, align 8
@C_INTIMEOUT = common dso_local global i32 0, align 4
@cmd_set = common dso_local global i32 0, align 4
@DELAY_INFINITY = common dso_local global i32 0, align 4
@SEC_IN_MONTH = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, flags = %d, exp_time = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"##incr##\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@mct_set = common dso_local global i32 0, align 4
@value_buff = common dso_local global i64* null, align 8

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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @binlog_disabled, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 -2, i32* %8, align 4
  br label %163

23:                                               ; preds = %7
  %24 = load i64, i64* @protected_mode, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -2, i32* %8, align 4
  br label %163

27:                                               ; preds = %23
  %28 = load i32, i32* @C_INTIMEOUT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.connection*, %struct.connection** %9, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @cmd_set, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @cmd_set, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @DELAY_INFINITY, align 4
  store i32 %39, i32* %14, align 4
  br label %51

40:                                               ; preds = %27
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @SEC_IN_MONTH, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = call i64 (...) @get_double_time_since_epoch()
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %44, %40
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* @verbosity, align 4
  %53 = icmp sge i32 %52, 3
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %51
  store i32 0, i32* %16, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sge i32 %63, 6
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  store i8* %71, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %72, 8
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %69, %65, %62
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @MAX_VALUE_LEN, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %162

78:                                               ; preds = %74
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @mct_set, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %84, %78
  %88 = phi i1 [ true, %78 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @do_pmemcached_preload(i8* %79, i32 %80, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, -2
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load %struct.connection*, %struct.connection** %9, align 8
  %95 = call i64 @memcache_wait(%struct.connection* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %8, align 4
  br label %163

98:                                               ; preds = %93
  %99 = load %struct.connection*, %struct.connection** %9, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 0
  %101 = load i64*, i64** @value_buff, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @read_in(i32* %100, i64* %101, i32 %102)
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  store i32 0, i32* %8, align 4
  br label %163

108:                                              ; preds = %87
  %109 = load %struct.connection*, %struct.connection** %9, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 0
  %111 = load i64*, i64** @value_buff, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @read_in(i32* %110, i64* %111, i32 %112)
  %114 = load i32, i32* %15, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i64*, i64** @value_buff, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %108
  %125 = load i32, i32* %17, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = load i8*, i8** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i64*, i64** @value_buff, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @do_pmemcached_store(i32 %128, i8* %129, i32 %130, i32 %131, i32 %132, i64* %133, i32 %134)
  store i32 %135, i32* %18, align 4
  br label %146

136:                                              ; preds = %124
  %137 = load i64*, i64** @value_buff, align 8
  %138 = call i64 @atoll(i64* %137)
  store i64 %138, i64* %19, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i64, i64* %19, align 8
  %142 = call i32 @do_pmemcached_incr(i32 0, i8* %139, i32 %140, i64 %141)
  %143 = icmp ne i32 %142, -2
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  store i32 1, i32* %18, align 4
  br label %146

146:                                              ; preds = %136, %127
  br label %156

147:                                              ; preds = %108
  %148 = load i32, i32* %10, align 4
  %149 = load i8*, i8** %11, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i64*, i64** @value_buff, align 8
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @do_pmemcached_store(i32 %148, i8* %149, i32 %150, i32 %151, i32 %152, i64* %153, i32 %154)
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %147, %146
  %157 = load i32, i32* %18, align 4
  %158 = icmp ne i32 %157, -2
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %8, align 4
  br label %163

162:                                              ; preds = %74
  store i32 -2, i32* %8, align 4
  br label %163

163:                                              ; preds = %162, %156, %98, %97, %26, %22
  %164 = load i32, i32* %8, align 4
  ret i32 %164
}

declare dso_local i64 @get_double_time_since_epoch(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @do_pmemcached_preload(i8*, i32, i32) #1

declare dso_local i64 @memcache_wait(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @do_pmemcached_store(i32, i8*, i32, i32, i32, i64*, i32) #1

declare dso_local i64 @atoll(i64*) #1

declare dso_local i32 @do_pmemcached_incr(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
