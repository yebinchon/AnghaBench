; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d\0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"change_\00", align 1
@mode_names = common dso_local global i8** null, align 8
@mode = common dso_local global i64 0, align 8
@buf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%d,%d%n\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"change_album\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"s_overview_albums\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%*d,%d%n\00", align 1
@get = common dso_local global i32 0, align 4

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
  %47 = icmp sge i32 %46, 12
  br i1 %47, label %48, label %91

48:                                               ; preds = %42
  %49 = load i8*, i8** %16, align 8
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %91, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  %55 = load i8**, i8*** @mode_names, align 8
  %56 = load i64, i64* @mode, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strncmp(i8* %54, i8* %58, i32 5)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %52
  %62 = load %struct.connection*, %struct.connection** %9, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 0
  %64 = load i32, i32* @buf, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @safe_read_in(i32* %63, i32 %64, i32 %65)
  %67 = load i8*, i8** %16, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 12
  %69 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %18, i32* %19, i32* %20)
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %80, label %71

71:                                               ; preds = %61
  %72 = load i8*, i8** %16, align 8
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 12, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71, %61
  %81 = load i32, i32* @set, align 4
  %82 = call i32 @RETURN(i32 %81, i32 0)
  br label %83

83:                                               ; preds = %80, %71
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* @buf, align 4
  %87 = call i32 @do_change_photo(i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* @set, align 4
  %89 = load i32, i32* %21, align 4
  %90 = call i32 @RETURN(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %52, %48, %42
  %92 = load i32, i32* %17, align 4
  %93 = icmp sge i32 %92, 12
  br i1 %93, label %94, label %128

94:                                               ; preds = %91
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @strncmp(i8* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %128, label %98

98:                                               ; preds = %94
  %99 = load %struct.connection*, %struct.connection** %9, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 0
  %101 = load i32, i32* @buf, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @safe_read_in(i32* %100, i32 %101, i32 %102)
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 12
  %106 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %22, i32* %23, i32* %24)
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %117, label %108

108:                                              ; preds = %98
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %24, align 4
  %111 = add nsw i32 12, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108, %98
  %118 = load i32, i32* @set, align 4
  %119 = call i32 @RETURN(i32 %118, i32 0)
  br label %120

120:                                              ; preds = %117, %108
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* @buf, align 4
  %124 = call i32 @do_change_album(i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* @set, align 4
  %126 = load i32, i32* %25, align 4
  %127 = call i32 @RETURN(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %120, %94, %91
  %129 = load i32, i32* %17, align 4
  %130 = icmp sge i32 %129, 22
  br i1 %130, label %131, label %181

131:                                              ; preds = %128
  %132 = load i8*, i8** %16, align 8
  %133 = load i8**, i8*** @mode_names, align 8
  %134 = load i64, i64* @mode, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strncmp(i8* %132, i8* %136, i32 5)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %181, label %139

139:                                              ; preds = %131
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 5
  %142 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 17)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %181, label %144

144:                                              ; preds = %139
  store i32 -1, i32* %27, align 4
  %145 = load i8*, i8** %16, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 22
  %147 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %26, i32* %27)
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %158, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** %16, align 8
  %151 = load i32, i32* %27, align 4
  %152 = add nsw i32 22, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149, %144
  %159 = load i32, i32* @get, align 4
  %160 = call i32 @RETURN(i32 %159, i32 -2)
  br label %161

161:                                              ; preds = %158, %149
  %162 = load %struct.connection*, %struct.connection** %9, align 8
  %163 = call i32 @MESSAGE(%struct.connection* %162)
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %26, align 4
  %166 = call i64 @msg_reinit(i32 %163, i32 %164, i32 %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load i32, i32* @get, align 4
  %170 = call i32 @RETURN(i32 %169, i32 -2)
  br label %171

171:                                              ; preds = %168, %161
  %172 = load %struct.connection*, %struct.connection** %9, align 8
  %173 = getelementptr inbounds %struct.connection, %struct.connection* %172, i32 0, i32 0
  %174 = load %struct.connection*, %struct.connection** %9, align 8
  %175 = call i32 @MESSAGE(%struct.connection* %174)
  %176 = call i32 @msg_get_buf(i32 %175)
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @safe_read_in(i32* %173, i32 %176, i32 %177)
  %179 = load i32, i32* @get, align 4
  %180 = call i32 @RETURN(i32 %179, i32 1)
  br label %181

181:                                              ; preds = %171, %139, %131, %128
  %182 = load i32, i32* @set, align 4
  %183 = call i32 @RETURN(i32 %182, i32 -2)
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

declare dso_local i32 @hst(i8*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @safe_read_in(i32*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @do_change_photo(i32, i32, i32) #1

declare dso_local i32 @do_change_album(i32, i32, i32) #1

declare dso_local i64 @msg_reinit(i32, i32, i32) #1

declare dso_local i32 @MESSAGE(%struct.connection*) #1

declare dso_local i32 @msg_get_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
