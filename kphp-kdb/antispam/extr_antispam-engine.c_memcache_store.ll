; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.connection = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d\0A\00", align 1
@MAX_PATTERN_LEN = common dso_local global i32 0, align 4
@other = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@value_buf = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%d,%u,%u%n,%hu%n\00", align 1
@add_pattern = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%u,%u,%u%n\00", align 1
@set_matches = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [95 x i8] c"STORED: random_tag = %u, size = %d, ip = %u, uahash = %u\0Aexpect '$2get matches$6%u$^' command\0A\00", align 1

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
  %17 = alloca %struct.TYPE_10__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_9__, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* @INIT, align 4
  %27 = load %struct.connection*, %struct.connection** %9, align 8
  %28 = call i32 @free_tmp_buffers(%struct.connection* %27)
  %29 = load i32, i32* @verbosity, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %7
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %7
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @MAX_PATTERN_LEN, align 4
  %40 = icmp sge i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @other, align 4
  %46 = call i32 @RETURN(i32 %45, i32 -2)
  br label %47

47:                                               ; preds = %44, %37
  store i32 7, i32* %16, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 7
  br i1 %49, label %50, label %97

50:                                               ; preds = %47
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %97, label %54

54:                                               ; preds = %50
  store i32 0, i32* %18, align 4
  %55 = load %struct.connection*, %struct.connection** %9, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @value_buf, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @st_safe_read_in(i32* %56, %struct.TYPE_9__* %57, i32 %58)
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 7
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %66 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %62, i32* %63, i32* %64, i32* %18, i32* %65, i32* %18)
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %77, label %68

68:                                               ; preds = %54
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 7, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68, %54
  %78 = load i32, i32* @add_pattern, align 4
  %79 = call i32 @RETURN(i32 %78, i32 0)
  br label %80

80:                                               ; preds = %77, %68
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @value_buf, align 8
  %82 = call i32 @strlen(%struct.TYPE_9__* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @value_buf, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @mct_add, align 4
  %86 = icmp ne i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = bitcast %struct.TYPE_10__* %17 to { i64, i64 }*
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 4
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 1
  %92 = load i64, i64* %91, align 4
  %93 = call i32 @do_add_pattern(i64 %90, i64 %92, i32 %82, %struct.TYPE_9__* %83, i32 %87)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* @add_pattern, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @RETURN(i32 %94, i32 %95)
  br label %172

97:                                               ; preds = %50, %47
  %98 = load i32, i32* %12, align 4
  %99 = icmp sge i32 %98, 7
  br i1 %99, label %100, label %171

100:                                              ; preds = %97
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @strncmp(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %171, label %104

104:                                              ; preds = %100
  store i32 0, i32* %20, align 4
  %105 = load %struct.connection*, %struct.connection** %9, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @value_buf, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @st_safe_read_in(i32* %106, %struct.TYPE_9__* %107, i32 %108)
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 7
  %112 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %21, i32* %22, i32* %23, i32* %20)
  %113 = icmp ne i32 %112, 3
  br i1 %113, label %123, label %114

114:                                              ; preds = %104
  %115 = load i8*, i8** %11, align 8
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 7, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114, %104
  %124 = load i32, i32* @set_matches, align 4
  %125 = call i32 @RETURN(i32 %124, i32 0)
  br label %126

126:                                              ; preds = %123, %114
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %24, align 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %129 = load i32, i32* %23, align 4
  store i32 %129, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %133 = load i32, i32* %21, align 4
  store i32 %133, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %135 = load i32, i32* %22, align 4
  store i32 %135, i32* %134, align 4
  %136 = load %struct.connection*, %struct.connection** %9, align 8
  %137 = call i32 @init_tmp_buffers(%struct.connection* %136)
  %138 = load i32, i32* @verbosity, align 4
  %139 = icmp sge i32 %138, 3
  br i1 %139, label %140, label %147

140:                                              ; preds = %126
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %23, align 4
  %146 = call i32 @st_printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %140, %126
  %148 = load %struct.connection*, %struct.connection** %9, align 8
  %149 = getelementptr inbounds %struct.connection, %struct.connection* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @write_out(i32 %150, %struct.TYPE_9__* %25, i32 16)
  %152 = sext i32 %151 to i64
  %153 = icmp eq i64 %152, 16
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %24, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %24, align 4
  %157 = load %struct.connection*, %struct.connection** %9, align 8
  %158 = getelementptr inbounds %struct.connection, %struct.connection* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** @value_buf, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @write_out(i32 %159, %struct.TYPE_9__* %160, i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %24, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %24, align 4
  %168 = load i32, i32* @set_matches, align 4
  %169 = load i32, i32* %24, align 4
  %170 = call i32 @RETURN(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %147, %100, %97
  br label %172

172:                                              ; preds = %171, %80
  %173 = load i32, i32* @other, align 4
  %174 = call i32 @RETURN(i32 %173, i32 -2)
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @st_safe_read_in(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, ...) #1

declare dso_local i32 @do_add_pattern(i64, i64, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @strlen(%struct.TYPE_9__*) #1

declare dso_local i32 @init_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @st_printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_out(i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
