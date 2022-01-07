; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_fetch_with_import.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_fetch_with_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ref = type { i32, i8*, i8*, i32 }
%struct.child_process = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"couldn't run fast-import\00", align 1
@REF_STATUS_UPTODATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"import %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error while running fast-import\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"could not read ref %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i32, %struct.ref**)* @fetch_with_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_with_import(%struct.transport* %0, i32 %1, %struct.ref** %2) #0 {
  %4 = alloca %struct.transport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.child_process, align 4
  %8 = alloca %struct.helper_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.transport* %0, %struct.transport** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ref** %2, %struct.ref*** %6, align 8
  %14 = load %struct.transport*, %struct.transport** %4, align 8
  %15 = getelementptr inbounds %struct.transport, %struct.transport* %14, i32 0, i32 0
  %16 = load %struct.helper_data*, %struct.helper_data** %15, align 8
  store %struct.helper_data* %16, %struct.helper_data** %8, align 8
  %17 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.transport*, %struct.transport** %4, align 8
  %19 = call i32 @get_helper(%struct.transport* %18)
  %20 = load %struct.transport*, %struct.transport** %4, align 8
  %21 = call i64 @get_importer(%struct.transport* %20, %struct.child_process* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (i32, ...) @die(i32 %24)
  br label %26

26:                                               ; preds = %23, %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load %struct.ref**, %struct.ref*** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ref*, %struct.ref** %32, i64 %34
  %36 = load %struct.ref*, %struct.ref** %35, align 8
  store %struct.ref* %36, %struct.ref** %10, align 8
  %37 = load %struct.ref*, %struct.ref** %10, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @REF_STATUS_UPTODATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %63

44:                                               ; preds = %31
  %45 = load %struct.ref*, %struct.ref** %10, align 8
  %46 = getelementptr inbounds %struct.ref, %struct.ref* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.ref*, %struct.ref** %10, align 8
  %51 = getelementptr inbounds %struct.ref, %struct.ref* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.ref*, %struct.ref** %10, align 8
  %55 = getelementptr inbounds %struct.ref, %struct.ref* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i8* [ %52, %49 ], [ %56, %53 ]
  %59 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %61 = call i32 @sendline(%struct.helper_data* %60, %struct.strbuf* %11)
  %62 = call i32 @strbuf_reset(%struct.strbuf* %11)
  br label %63

63:                                               ; preds = %57, %43
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %27

66:                                               ; preds = %27
  %67 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %68 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @write_constant(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i64 @finish_command(%struct.child_process* %7)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 (i32, ...) @die(i32 %76)
  br label %78

78:                                               ; preds = %75, %66
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %141, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %144

83:                                               ; preds = %79
  %84 = load %struct.ref**, %struct.ref*** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ref*, %struct.ref** %84, i64 %86
  %88 = load %struct.ref*, %struct.ref** %87, align 8
  store %struct.ref* %88, %struct.ref** %10, align 8
  %89 = load %struct.ref*, %struct.ref** %10, align 8
  %90 = getelementptr inbounds %struct.ref, %struct.ref* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @REF_STATUS_UPTODATE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %141

96:                                               ; preds = %83
  %97 = load %struct.ref*, %struct.ref** %10, align 8
  %98 = getelementptr inbounds %struct.ref, %struct.ref* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.ref*, %struct.ref** %10, align 8
  %103 = getelementptr inbounds %struct.ref, %struct.ref* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  br label %109

105:                                              ; preds = %96
  %106 = load %struct.ref*, %struct.ref** %10, align 8
  %107 = getelementptr inbounds %struct.ref, %struct.ref* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i8* [ %104, %101 ], [ %108, %105 ]
  store i8* %110, i8** %13, align 8
  %111 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %112 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load %struct.helper_data*, %struct.helper_data** %8, align 8
  %118 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %117, i32 0, i32 0
  %119 = load i8*, i8** %13, align 8
  %120 = call i8* @apply_refspecs(%struct.TYPE_4__* %118, i8* %119)
  store i8* %120, i8** %12, align 8
  br label %124

121:                                              ; preds = %109
  %122 = load i8*, i8** %13, align 8
  %123 = call i8* @xstrdup(i8* %122)
  store i8* %123, i8** %12, align 8
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i8*, i8** %12, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i8*, i8** %12, align 8
  %129 = load %struct.ref*, %struct.ref** %10, align 8
  %130 = getelementptr inbounds %struct.ref, %struct.ref* %129, i32 0, i32 3
  %131 = call i64 @read_ref(i8* %128, i32* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 (i32, ...) @die(i32 %134, i8* %135)
  br label %137

137:                                              ; preds = %133, %127
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @free(i8* %138)
  br label %140

140:                                              ; preds = %137, %124
  br label %141

141:                                              ; preds = %140, %95
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %79

144:                                              ; preds = %79
  %145 = call i32 @strbuf_release(%struct.strbuf* %11)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_helper(%struct.transport*) #2

declare dso_local i64 @get_importer(%struct.transport*, %struct.child_process*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @sendline(%struct.helper_data*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @write_constant(i32, i8*) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i8* @apply_refspecs(%struct.TYPE_4__*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i64 @read_ref(i8*, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
