; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.data = type { i32, i8* }

@binlog_disabled = common dso_local global i32 0, align 4
@protected_mode = common dso_local global i64 0, align 8
@C_INTIMEOUT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"memcache_incr: op=%d, key='%s', val=%lld\0A\00", align 1
@cmd_decr = common dso_local global i32 0, align 4
@cmd_incr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"###\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@memcache_incr.a = internal global [30 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@mct_add = common dso_local global i32 0, align 4
@DELAY_INFINITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"do_pmemcached_incr returns %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"y.data_len = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_incr(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.data, align 8
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @binlog_disabled, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %164

18:                                               ; preds = %5
  %19 = load i64, i64* @protected_mode, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %164

22:                                               ; preds = %18
  %23 = load i32, i32* @C_INTIMEOUT, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.connection*, %struct.connection** %7, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @verbosity, align 4
  %30 = icmp sge i32 %29, 3
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @cmd_decr, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @cmd_decr, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @cmd_incr, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @cmd_incr, align 4
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 3
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  store i8* %55, i8** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 3
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %49, %46
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @do_pmemcached_preload(i8* %59, i32 %60, i32 1)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, -2
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.connection*, %struct.connection** %7, align 8
  %66 = call i32 @memcache_wait(%struct.connection* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load %struct.connection*, %struct.connection** %7, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 0
  %71 = call i32 @write_out(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  br label %72

72:                                               ; preds = %68, %64
  store i32 0, i32* %6, align 4
  br label %164

73:                                               ; preds = %58
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* %11, align 8
  %84 = sub nsw i64 0, %83
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @sprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @memcache_incr.a, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @mct_add, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @DELAY_INFINITY, align 4
  %92 = call i32 @strlen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @memcache_incr.a, i64 0, i64 0))
  %93 = call i32 @do_pmemcached_store(i32 %88, i8* %89, i32 %90, i32 0, i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @memcache_incr.a, i64 0, i64 0), i32 %92)
  %94 = icmp ne i32 %93, -2
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  br label %121

97:                                               ; preds = %76, %73
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @do_pmemcached_incr(i32 %98, i8* %99, i32 %100, i64 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* @verbosity, align 4
  %104 = icmp sge i32 %103, 4
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %97
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, -2
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.connection*, %struct.connection** %7, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 0
  %119 = call i32 @write_out(i32* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %164

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %85
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call { i32, i8* } @do_pmemcached_get(i8* %122, i32 %123)
  %125 = bitcast %struct.data* %14 to { i32, i8* }*
  %126 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %125, i32 0, i32 0
  %127 = extractvalue { i32, i8* } %124, 0
  store i32 %127, i32* %126, align 8
  %128 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %125, i32 0, i32 1
  %129 = extractvalue { i32, i8* } %124, 1
  store i8* %129, i8** %128, align 8
  %130 = load i32, i32* @verbosity, align 4
  %131 = icmp sge i32 %130, 4
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load i32, i32* @stderr, align 4
  %134 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %132, %121
  %138 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, -2
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.connection*, %struct.connection** %7, align 8
  %143 = call i32 @memcache_wait(%struct.connection* %142)
  store i32 %143, i32* %6, align 4
  br label %164

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load %struct.connection*, %struct.connection** %7, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 0
  %151 = call i32 @write_out(i32* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  br label %163

152:                                              ; preds = %144
  %153 = load %struct.connection*, %struct.connection** %7, align 8
  %154 = getelementptr inbounds %struct.connection, %struct.connection* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @write_out(i32* %154, i8* %156, i32 %158)
  %160 = load %struct.connection*, %struct.connection** %7, align 8
  %161 = getelementptr inbounds %struct.connection, %struct.connection* %160, i32 0, i32 0
  %162 = call i32 @write_out(i32* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  br label %163

163:                                              ; preds = %152, %148
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %163, %141, %116, %72, %21, %17
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @do_pmemcached_preload(i8*, i32, i32) #1

declare dso_local i32 @memcache_wait(%struct.connection*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_pmemcached_store(i32, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_pmemcached_incr(i32, i8*, i32, i64) #1

declare dso_local { i32, i8* } @do_pmemcached_get(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
