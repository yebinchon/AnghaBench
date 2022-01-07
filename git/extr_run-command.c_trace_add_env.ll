; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_trace_add_env.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_trace_add_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.strbuf = type { i8* }
%struct.TYPE_4__ = type { i8* }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c" unset\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8**)* @trace_add_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_add_env(%struct.strbuf* %0, i8** %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.string_list, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8** %1, i8*** %4, align 8
  %16 = bitcast %struct.string_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %17 = load i8**, i8*** %4, align 8
  store i8** %17, i8*** %6, align 8
  br label %18

18:                                               ; preds = %58, %2
  %19 = load i8**, i8*** %6, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %61

27:                                               ; preds = %25
  %28 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 61)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %37 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @strbuf_add(%struct.strbuf* %9, i8* %36, i32 %43)
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.TYPE_4__* @string_list_insert(%struct.string_list* %5, i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  br label %56

51:                                               ; preds = %27
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.TYPE_4__* @string_list_insert(%struct.string_list* %5, i8* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* null, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %34
  %57 = call i32 @strbuf_release(%struct.strbuf* %9)
  br label %58

58:                                               ; preds = %56
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %6, align 8
  br label %18

61:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %99, %61
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %11, align 8
  %75 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %67
  %85 = load i8*, i8** %11, align 8
  %86 = call i8* @getenv(i8* %85)
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84, %67
  br label %99

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %94 = call i32 @strbuf_addstr(%struct.strbuf* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @strbuf_addf(%struct.strbuf* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %62

102:                                              ; preds = %62
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %107 = call i32 @strbuf_addch(%struct.strbuf* %106, i8 signext 59)
  br label %108

108:                                              ; preds = %105, %102
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %150, %108
  %110 = load i32, i32* %7, align 4
  %111 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %13, align 8
  %122 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %14, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %114
  br label %150

132:                                              ; preds = %114
  %133 = load i8*, i8** %13, align 8
  %134 = call i8* @getenv(i8* %133)
  store i8* %134, i8** %15, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i8*, i8** %14, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = call i32 @strcmp(i8* %138, i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %150

143:                                              ; preds = %137, %132
  %144 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 @strbuf_addf(%struct.strbuf* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %145)
  %147 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @sq_quote_buf_pretty(%struct.strbuf* %147, i8* %148)
  br label %150

150:                                              ; preds = %143, %142, %131
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %109

153:                                              ; preds = %109
  %154 = call i32 @string_list_clear(%struct.string_list* %5, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local %struct.TYPE_4__* @string_list_insert(%struct.string_list*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @sq_quote_buf_pretty(%struct.strbuf*, i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
