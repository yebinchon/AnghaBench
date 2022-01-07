; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d\0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"question\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"answer\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"%d,%d,%d%n\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1

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
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %28 = load i32, i32* @INIT, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @hst(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @MAX_VALUE_LEN, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %7
  %40 = load i32, i32* @set, align 4
  %41 = call i32 @RETURN(i32 %40, i32 -2)
  br label %42

42:                                               ; preds = %39, %7
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @eat_at(i8* %43, i32 %44, i8** %16, i32* %17)
  %46 = load i32, i32* %17, align 4
  %47 = icmp sge i32 %46, 8
  br i1 %47, label %48, label %80

48:                                               ; preds = %42
  %49 = load i8*, i8** %16, align 8
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %80, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @set, align 4
  %59 = call i32 @RETURN(i32 %58, i32 -2)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.connection*, %struct.connection** %9, align 8
  %62 = call i32 @MESSAGE(%struct.connection* %61)
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %18, align 4
  %65 = call i64 @msg_reinit(i32 %62, i32 %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @set, align 4
  %69 = call i32 @RETURN(i32 %68, i32 -2)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.connection*, %struct.connection** %9, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 0
  %73 = load %struct.connection*, %struct.connection** %9, align 8
  %74 = call i32 @MESSAGE(%struct.connection* %73)
  %75 = call i8* @msg_get_buf(i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @safe_read_in(i32* %72, i8* %75, i32 %76)
  %78 = load i32, i32* @set, align 4
  %79 = call i32 @RETURN(i32 %78, i32 1)
  br label %80

80:                                               ; preds = %70, %48, %42
  %81 = load i32, i32* %17, align 4
  %82 = icmp sge i32 %81, 6
  br i1 %82, label %83, label %119

83:                                               ; preds = %80
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %119, label %87

87:                                               ; preds = %83
  %88 = load %struct.connection*, %struct.connection** %9, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 0
  %90 = load i8*, i8** @buf, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @safe_read_in(i32* %89, i8* %90, i32 %91)
  %93 = load i8*, i8** %16, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 6
  %95 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %19, i32* %20, i32* %21, i32* %22)
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %106, label %97

97:                                               ; preds = %87
  %98 = load i8*, i8** %16, align 8
  %99 = load i32, i32* %22, align 4
  %100 = add nsw i32 6, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97, %87
  %107 = load i32, i32* @set, align 4
  %108 = call i32 @RETURN(i32 %107, i32 0)
  br label %109

109:                                              ; preds = %106, %97
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i8*, i8** @buf, align 8
  %115 = call i32 @do_add_answer(i32 %110, i32 %111, i32 %112, i32 %113, i8* %114)
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* @set, align 4
  %117 = load i32, i32* %23, align 4
  %118 = call i32 @RETURN(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %109, %83, %80
  %120 = load i32, i32* %17, align 4
  %121 = icmp sge i32 %120, 4
  br i1 %121, label %122, label %167

122:                                              ; preds = %119
  %123 = load i8*, i8** %16, align 8
  %124 = call i32 @strncmp(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %167, label %126

126:                                              ; preds = %122
  %127 = load %struct.connection*, %struct.connection** %9, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 0
  %129 = load i8*, i8** @buf, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @safe_read_in(i32* %128, i8* %129, i32 %130)
  %132 = load i8*, i8** %16, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 4
  %134 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %24, i32* %26)
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %157, label %136

136:                                              ; preds = %126
  %137 = load i8*, i8** %16, align 8
  %138 = load i32, i32* %26, align 4
  %139 = add nsw i32 4, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %136
  %146 = load i8*, i8** @buf, align 8
  %147 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %25, i32* %26)
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = load i8*, i8** @buf, align 8
  %151 = load i32, i32* %26, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %149, %145, %136, %126
  %158 = load i32, i32* @set, align 4
  %159 = call i32 @RETURN(i32 %158, i32 0)
  br label %160

160:                                              ; preds = %157, %149
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* %25, align 4
  %163 = call i32 @do_set_mark(i32 %161, i32 %162)
  store i32 %163, i32* %27, align 4
  %164 = load i32, i32* @set, align 4
  %165 = load i32, i32* %27, align 4
  %166 = call i32 @RETURN(i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %160, %122, %119
  %168 = load i32, i32* @set, align 4
  %169 = call i32 @RETURN(i32 %168, i32 -2)
  %170 = load i32, i32* %8, align 4
  ret i32 %170
}

declare dso_local i32 @hst(i8*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i64 @msg_reinit(i32, i32, i32) #1

declare dso_local i32 @MESSAGE(%struct.connection*) #1

declare dso_local i32 @safe_read_in(i32*, i8*, i32) #1

declare dso_local i8* @msg_get_buf(i32) #1

declare dso_local i32 @do_add_answer(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @do_set_mark(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
