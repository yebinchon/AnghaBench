; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_get_refs_list_using_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_get_refs_list_using_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref = type { i8*, %struct.ref*, i32, i32, i32 }
%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { i32, i64 }
%struct.child_process = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"list for-push\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"list\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"malformed response in ref list: %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"unchanged\00", align 1
@REF_STATUS_UPTODATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"could not read ref %s\00", align 1
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Debug: Read ref listing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.transport*, i32)* @get_refs_list_using_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @get_refs_list_using_list(%struct.transport* %0, i32 %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.helper_data*, align 8
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.ref**, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.transport*, %struct.transport** %3, align 8
  %14 = getelementptr inbounds %struct.transport, %struct.transport* %13, i32 0, i32 0
  %15 = load %struct.helper_data*, %struct.helper_data** %14, align 8
  store %struct.helper_data* %15, %struct.helper_data** %5, align 8
  store %struct.ref* null, %struct.ref** %7, align 8
  store %struct.ref** %7, %struct.ref*** %8, align 8
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %17 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %18 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.transport*, %struct.transport** %3, align 8
  %20 = call %struct.child_process* @get_helper(%struct.transport* %19)
  store %struct.child_process* %20, %struct.child_process** %6, align 8
  %21 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %22 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.child_process*, %struct.child_process** %6, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @write_str_in_full(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %38

33:                                               ; preds = %25, %2
  %34 = load %struct.child_process*, %struct.child_process** %6, align 8
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @write_str_in_full(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %138
  %40 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %41 = call i64 @recvline(%struct.helper_data* %40, %struct.strbuf* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @exit(i32 128) #4
  unreachable

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %142

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 32)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @die(i32 %58, i8* %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i8* @strchr(i8* %64, i8 signext 32)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %11, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i8*, i8** %12, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = call %struct.ref* @alloc_ref(i8* %73)
  %75 = load %struct.ref**, %struct.ref*** %8, align 8
  store %struct.ref* %74, %struct.ref** %75, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 64
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = call i32 @xstrdup(i8* %85)
  %87 = load %struct.ref**, %struct.ref*** %8, align 8
  %88 = load %struct.ref*, %struct.ref** %87, align 8
  %89 = getelementptr inbounds %struct.ref, %struct.ref* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  br label %105

90:                                               ; preds = %71
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 63
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.ref**, %struct.ref*** %8, align 8
  %101 = load %struct.ref*, %struct.ref** %100, align 8
  %102 = getelementptr inbounds %struct.ref, %struct.ref* %101, i32 0, i32 2
  %103 = call i32 @get_oid_hex(i8* %99, i32* %102)
  br label %104

104:                                              ; preds = %97, %90
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %138

108:                                              ; preds = %105
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = call i64 @has_attribute(i8* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %108
  %114 = load i32, i32* @REF_STATUS_UPTODATE, align 4
  %115 = load %struct.ref**, %struct.ref*** %8, align 8
  %116 = load %struct.ref*, %struct.ref** %115, align 8
  %117 = getelementptr inbounds %struct.ref, %struct.ref* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load %struct.ref**, %struct.ref*** %8, align 8
  %121 = load %struct.ref*, %struct.ref** %120, align 8
  %122 = getelementptr inbounds %struct.ref, %struct.ref* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.ref**, %struct.ref*** %8, align 8
  %125 = load %struct.ref*, %struct.ref** %124, align 8
  %126 = getelementptr inbounds %struct.ref, %struct.ref* %125, i32 0, i32 2
  %127 = call i64 @read_ref(i8* %123, i32* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %113
  %130 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.ref**, %struct.ref*** %8, align 8
  %132 = load %struct.ref*, %struct.ref** %131, align 8
  %133 = getelementptr inbounds %struct.ref, %struct.ref* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @die(i32 %130, i8* %134)
  br label %136

136:                                              ; preds = %129, %113
  br label %137

137:                                              ; preds = %136, %108
  br label %138

138:                                              ; preds = %137, %105
  %139 = load %struct.ref**, %struct.ref*** %8, align 8
  %140 = load %struct.ref*, %struct.ref** %139, align 8
  %141 = getelementptr inbounds %struct.ref, %struct.ref* %140, i32 0, i32 1
  store %struct.ref** %141, %struct.ref*** %8, align 8
  br label %39

142:                                              ; preds = %50
  %143 = load i64, i64* @debug, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 @fprintf(i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142
  %149 = call i32 @strbuf_release(%struct.strbuf* %10)
  %150 = load %struct.ref*, %struct.ref** %7, align 8
  store %struct.ref* %150, %struct.ref** %9, align 8
  br label %151

151:                                              ; preds = %158, %148
  %152 = load %struct.ref*, %struct.ref** %9, align 8
  %153 = icmp ne %struct.ref* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load %struct.ref*, %struct.ref** %9, align 8
  %156 = load %struct.ref*, %struct.ref** %7, align 8
  %157 = call i32 @resolve_remote_symref(%struct.ref* %155, %struct.ref* %156)
  br label %158

158:                                              ; preds = %154
  %159 = load %struct.ref*, %struct.ref** %9, align 8
  %160 = getelementptr inbounds %struct.ref, %struct.ref* %159, i32 0, i32 1
  %161 = load %struct.ref*, %struct.ref** %160, align 8
  store %struct.ref* %161, %struct.ref** %9, align 8
  br label %151

162:                                              ; preds = %151
  %163 = load %struct.ref*, %struct.ref** %7, align 8
  ret %struct.ref* %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.child_process* @get_helper(%struct.transport*) #2

declare dso_local i32 @write_str_in_full(i32, i8*) #2

declare dso_local i64 @recvline(%struct.helper_data*, %struct.strbuf*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.ref* @alloc_ref(i8*) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @get_oid_hex(i8*, i32*) #2

declare dso_local i64 @has_attribute(i8*, i8*) #2

declare dso_local i64 @read_ref(i8*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @resolve_remote_symref(%struct.ref*, %struct.ref*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
