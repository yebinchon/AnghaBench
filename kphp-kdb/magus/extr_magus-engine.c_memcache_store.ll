; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, \0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hints\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"hints%d\00", align 1
@set = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"apps_exception\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"apps_exception%d%n\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"add apps exception %d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"exception%d,%d%n\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"add exception %d %d %s\0A\00", align 1

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
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* @INIT, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @hst(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @verbosity, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %7
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %7
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @MAX_VALUE_LEN, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %188

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @eat_at(i8* %45, i32 %46, i8** %16, i32* %17)
  %48 = load i32, i32* %17, align 4
  %49 = icmp sge i32 %48, 5
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %18)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @set, align 4
  %60 = call i32 @RETURN(i32 %59, i32 -2)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load %struct.connection*, %struct.connection** %9, align 8
  %63 = call i32 @MESSAGE(%struct.connection* %62)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i64 @msg_reinit(i32 %63, i32 %64, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @set, align 4
  %70 = call i32 @RETURN(i32 %69, i32 -2)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.connection*, %struct.connection** %9, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 0
  %74 = load %struct.connection*, %struct.connection** %9, align 8
  %75 = call i32 @MESSAGE(%struct.connection* %74)
  %76 = call i8* @msg_get_buf(i32 %75)
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @safe_read_in(i32* %73, i8* %76, i32 %77)
  %79 = load i32, i32* @set, align 4
  %80 = call i32 @RETURN(i32 %79, i32 1)
  br label %81

81:                                               ; preds = %71, %50, %44
  %82 = load i32, i32* %17, align 4
  %83 = icmp sge i32 %82, 14
  br i1 %83, label %84, label %130

84:                                               ; preds = %81
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %130, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %16, align 8
  %90 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %19, i32* %20)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %19, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %16, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95, %92, %88
  %104 = load i32, i32* @set, align 4
  %105 = call i32 @RETURN(i32 %104, i32 -2)
  br label %106

106:                                              ; preds = %103, %95
  %107 = load %struct.connection*, %struct.connection** %9, align 8
  %108 = getelementptr inbounds %struct.connection, %struct.connection* %107, i32 0, i32 0
  %109 = load i8*, i8** @buf, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @safe_read_in(i32* %108, i8* %109, i32 %110)
  %112 = load i8*, i8** @buf, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i32, i32* @verbosity, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = load i32, i32* @stderr, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i8*, i8** @buf, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %118, %106
  %124 = load i32, i32* %19, align 4
  %125 = load i8*, i8** @buf, align 8
  %126 = call i32 @do_add_exception(i32 %124, i32 41, i8* %125)
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* @set, align 4
  %128 = load i32, i32* %21, align 4
  %129 = call i32 @RETURN(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %84, %81
  %131 = load i32, i32* %17, align 4
  %132 = icmp sge i32 %131, 9
  br i1 %132, label %133, label %187

133:                                              ; preds = %130
  %134 = load i8*, i8** %16, align 8
  %135 = call i32 @strncmp(i8* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %187, label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %16, align 8
  %139 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %22, i32* %24, i32* %23)
  %140 = icmp ne i32 %139, 2
  br i1 %140, label %158, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %22, align 4
  %143 = icmp sle i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %24, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %24, align 4
  %149 = icmp sgt i32 %148, 255
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %16, align 8
  %152 = load i32, i32* %23, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150, %147, %144, %141, %137
  %159 = load i32, i32* @set, align 4
  %160 = call i32 @RETURN(i32 %159, i32 -2)
  br label %161

161:                                              ; preds = %158, %150
  %162 = load %struct.connection*, %struct.connection** %9, align 8
  %163 = getelementptr inbounds %struct.connection, %struct.connection* %162, i32 0, i32 0
  %164 = load i8*, i8** @buf, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @safe_read_in(i32* %163, i8* %164, i32 %165)
  %167 = load i8*, i8** @buf, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8 0, i8* %170, align 1
  %171 = load i32, i32* @verbosity, align 4
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %179

173:                                              ; preds = %161
  %174 = load i32, i32* @stderr, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i8*, i8** @buf, align 8
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %175, i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %173, %161
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %24, align 4
  %182 = load i8*, i8** @buf, align 8
  %183 = call i32 @do_add_exception(i32 %180, i32 %181, i8* %182)
  store i32 %183, i32* %25, align 4
  %184 = load i32, i32* @set, align 4
  %185 = load i32, i32* %25, align 4
  %186 = call i32 @RETURN(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %179, %133, %130
  br label %188

188:                                              ; preds = %187, %39
  %189 = load i32, i32* @set, align 4
  %190 = call i32 @RETURN(i32 %189, i32 -2)
  %191 = load i32, i32* %8, align 4
  ret i32 %191
}

declare dso_local i32 @hst(i8*, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i64 @msg_reinit(i32, i32, i32) #1

declare dso_local i32 @MESSAGE(%struct.connection*) #1

declare dso_local i32 @safe_read_in(i32*, i8*, i32) #1

declare dso_local i8* @msg_get_buf(i32) #1

declare dso_local i32 @do_add_exception(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
