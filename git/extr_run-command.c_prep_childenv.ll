; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_prep_childenv.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_prep_childenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.strbuf = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@environ = external dso_local global i8**, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**)* @prep_childenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @prep_childenv(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.string_list, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %10 = bitcast %struct.string_list* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %11 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = load i8**, i8*** @environ, align 8
  store i8** %12, i8*** %6, align 8
  br label %13

13:                                               ; preds = %54, %1
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %57

22:                                               ; preds = %20
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 61)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %32 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @strbuf_add(%struct.strbuf* %5, i8* %31, i32 %38)
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.TYPE_6__* @string_list_append(%struct.string_list* %4, i8* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  br label %53

46:                                               ; preds = %22
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call %struct.TYPE_6__* @string_list_append(%struct.string_list* %4, i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %28
  br label %54

54:                                               ; preds = %53
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %6, align 8
  br label %13

57:                                               ; preds = %20
  %58 = call i32 @string_list_sort(%struct.string_list* %4)
  %59 = load i8**, i8*** %2, align 8
  store i8** %59, i8*** %6, align 8
  br label %60

60:                                               ; preds = %98, %57
  %61 = load i8**, i8*** %6, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %69, label %101

69:                                               ; preds = %67
  %70 = load i8**, i8*** %6, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 61)
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8**, i8*** %6, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %79 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @strbuf_add(%struct.strbuf* %5, i8* %78, i32 %85)
  %87 = load i8**, i8*** %6, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call %struct.TYPE_5__* @string_list_insert(%struct.string_list* %4, i8* %90)
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  br label %97

93:                                               ; preds = %69
  %94 = load i8**, i8*** %6, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @string_list_remove(%struct.string_list* %4, i8* %95, i32 0)
  br label %97

97:                                               ; preds = %93, %75
  br label %98

98:                                               ; preds = %97
  %99 = load i8**, i8*** %6, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %6, align 8
  br label %60

101:                                              ; preds = %67
  %102 = load i8**, i8*** %3, align 8
  %103 = getelementptr inbounds %struct.string_list, %struct.string_list* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  %106 = call i32 @ALLOC_ARRAY(i8** %102, i32 %105)
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %124, %101
  %108 = load i32, i32* %7, align 4
  %109 = getelementptr inbounds %struct.string_list, %struct.string_list* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.string_list, %struct.string_list* %4, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %3, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %119, i8** %123, align 8
  br label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %107

127:                                              ; preds = %107
  %128 = load i8**, i8*** %3, align 8
  %129 = getelementptr inbounds %struct.string_list, %struct.string_list* %4, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  store i8* null, i8** %132, align 8
  %133 = call i32 @string_list_clear(%struct.string_list* %4, i32 0)
  %134 = call i32 @strbuf_release(%struct.strbuf* %5)
  %135 = load i8**, i8*** %3, align 8
  ret i8** %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local %struct.TYPE_6__* @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local %struct.TYPE_5__* @string_list_insert(%struct.string_list*, i8*) #2

declare dso_local i32 @string_list_remove(%struct.string_list*, i8*, i32) #2

declare dso_local i32 @ALLOC_ARRAY(i8**, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
