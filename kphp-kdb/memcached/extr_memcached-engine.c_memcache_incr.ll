; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_memcache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"memcache_incr: op=%d, key='%s', val=%lld\0A\00", align 1
@cmd_decr = common dso_local global i32 0, align 4
@cmd_incr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_incr(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [30 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %21 = load i64, i64* @verbosity, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i64 %27)
  br label %29

29:                                               ; preds = %23, %5
  %30 = load i64, i64* %11, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = mul nsw i64 %33, -1
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %29
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
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @get_hash(i8* %47, i32 %48)
  store i64 %49, i64* %12, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @get_entry(i8* %50, i32 %51, i64 %52)
  store i32 %53, i32* %13, align 4
  %54 = call i32 @ADD_OPER(i32 2)
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.connection*, %struct.connection** %7, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 0
  %60 = call i32 @write_out(i32* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  store i32 0, i32* %6, align 4
  br label %175

61:                                               ; preds = %46
  %62 = load i32, i32* %13, align 4
  %63 = call %struct.TYPE_3__* @get_entry_ptr(i32 %62)
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %14, align 8
  store i64 0, i64* %15, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %110, %61
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi i1 [ false, %64 ], [ %72, %70 ]
  br i1 %74, label %75, label %113

75:                                               ; preds = %73
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 48, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %75
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %93, 57
  br i1 %94, label %95, label %108

95:                                               ; preds = %85
  %96 = load i64, i64* %15, align 8
  %97 = mul i64 %96, 10
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i64
  %106 = add i64 %97, %105
  %107 = sub i64 %106, 48
  store i64 %107, i64* %15, align 8
  br label %109

108:                                              ; preds = %85, %75
  store i32 0, i32* %17, align 4
  br label %109

109:                                              ; preds = %108, %95
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %64

113:                                              ; preds = %73
  %114 = load i32, i32* %17, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i64 0, i64* %15, align 8
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %15, align 8
  %123 = icmp ugt i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i64 0, i64* %15, align 8
  br label %129

125:                                              ; preds = %120
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %15, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %15, align 8
  br label %129

129:                                              ; preds = %125, %124
  br label %134

130:                                              ; preds = %117
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %15, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %15, align 8
  br label %134

134:                                              ; preds = %130, %129
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = bitcast i8* %137 to i64*
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  %143 = call i32 @zzfree(i64* %138, i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @del_entry_used(i32 %144)
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @add_entry_used(i32 %146)
  %148 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 0
  %149 = load i64, i64* %15, align 8
  %150 = call i32 @sprintf(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %149)
  %151 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 0
  %152 = call i32 @strlen(i8* %151)
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  %155 = call i8* @zzmalloc(i32 %154)
  store i8* %155, i8** %20, align 8
  %156 = load i8*, i8** %20, align 8
  %157 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 0
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32 @memcpy(i8* %156, i8* %157, i32 %159)
  %161 = load i8*, i8** %20, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.connection*, %struct.connection** %7, align 8
  %168 = getelementptr inbounds %struct.connection, %struct.connection* %167, i32 0, i32 0
  %169 = load i8*, i8** %20, align 8
  %170 = load i32, i32* %19, align 4
  %171 = call i32 @write_out(i32* %168, i8* %169, i32 %170)
  %172 = load %struct.connection*, %struct.connection** %7, align 8
  %173 = getelementptr inbounds %struct.connection, %struct.connection* %172, i32 0, i32 0
  %174 = call i32 @write_out(i32* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %134, %57
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i64) #1

declare dso_local i64 @get_hash(i8*, i32) #1

declare dso_local i32 @get_entry(i8*, i32, i64) #1

declare dso_local i32 @ADD_OPER(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @get_entry_ptr(i32) #1

declare dso_local i32 @zzfree(i64*, i32) #1

declare dso_local i32 @del_entry_used(i32) #1

declare dso_local i32 @add_entry_used(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @zzmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
