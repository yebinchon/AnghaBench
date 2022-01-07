; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_service.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_rpc_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.child_process = type { i32, i32, i32, i8** }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_state = type { i8*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i64, i32 }
%struct.discovery = type { i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@http_post_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@url = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Content-Type: application/x-%s-request\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Accept: application/x-%s-result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_state*, %struct.discovery*, i8**, %struct.strbuf*, %struct.strbuf*)* @rpc_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_service(%struct.rpc_state* %0, %struct.discovery* %1, i8** %2, %struct.strbuf* %3, %struct.strbuf* %4) #0 {
  %6 = alloca %struct.rpc_state*, align 8
  %7 = alloca %struct.discovery*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.child_process, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4096 x i8], align 16
  store %struct.rpc_state* %0, %struct.rpc_state** %6, align 8
  store %struct.discovery* %1, %struct.discovery** %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  %17 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %18 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %21 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  store i32 0, i32* %14, align 4
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  store i8** %25, i8*** %26, align 8
  %27 = call i64 @start_command(%struct.child_process* %13)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = call i32 @exit(i32 1) #4
  unreachable

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write_or_die(i32 %33, i32 %36, i32 %39)
  %41 = load %struct.discovery*, %struct.discovery** %7, align 8
  %42 = icmp ne %struct.discovery* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.discovery*, %struct.discovery** %7, align 8
  %47 = getelementptr inbounds %struct.discovery, %struct.discovery* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.discovery*, %struct.discovery** %7, align 8
  %50 = getelementptr inbounds %struct.discovery, %struct.discovery* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @write_or_die(i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %43, %31
  %54 = load i32, i32* @http_post_buffer, align 4
  %55 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %56 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %58 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @xmalloc(i32 %59)
  %61 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %62 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %66 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %70 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @url, i32 0, i32 0), align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %74)
  %76 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %79 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %78, i32 0, i32 8
  store i32* %77, i32** %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %85 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %84, i32 0, i32 7
  store i32* %83, i32** %85, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  %88 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %91 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %90, i32 0, i32 6
  store i32* %89, i32** %91, align 8
  %92 = load %struct.discovery*, %struct.discovery** %7, align 8
  %93 = getelementptr inbounds %struct.discovery, %struct.discovery* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @get_protocol_http_header(i32 %94, %struct.strbuf* %12)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %53
  %98 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %101 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %100, i32 0, i32 5
  store i32* %99, i32** %101, align 8
  br label %105

102:                                              ; preds = %53
  %103 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %104 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %103, i32 0, i32 5
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %124, %105
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br i1 %109, label %110, label %134

110:                                              ; preds = %106
  %111 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %112 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %115 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %118 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @packet_read(i32 %113, i32* null, i32* null, i32* %116, i32 %119, i32 0)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %110
  br label %134

124:                                              ; preds = %110
  %125 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %126 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %125, i32 0, i32 9
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %129 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %131 = call i32 @post_rpc(%struct.rpc_state* %130, i32 0)
  %132 = load i32, i32* %14, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %14, align 4
  br label %106

134:                                              ; preds = %123, %106
  %135 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @close(i32 %136)
  %138 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 -1, i32* %138, align 8
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %134
  %142 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %143 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @strbuf_read(%struct.strbuf* %142, i32 %144, i32 0)
  br label %156

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %154, %146
  %148 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %151 = call i64 @xread(i32 %149, i8* %150, i32 4096)
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %155

154:                                              ; preds = %147
  br label %147

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %141
  %157 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @close(i32 %158)
  %160 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i32 -1, i32* %160, align 4
  %161 = call i32 @finish_command(%struct.child_process* %13)
  %162 = load i32, i32* %14, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %14, align 4
  %164 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %165 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %164, i32 0, i32 8
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @free(i32* %166)
  %168 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %169 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @free(i32* %170)
  %172 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %173 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @free(i32* %174)
  %176 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %177 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @free(i32* %178)
  %180 = load %struct.rpc_state*, %struct.rpc_state** %6, align 8
  %181 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @free(i32* %182)
  %184 = call i32 @strbuf_release(%struct.strbuf* %12)
  %185 = load i32, i32* %14, align 4
  ret i32 %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @start_command(%struct.child_process*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32* @xmalloc(i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i64 @get_protocol_http_header(i32, %struct.strbuf*) #2

declare dso_local i32 @packet_read(i32, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @post_rpc(%struct.rpc_state*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i64 @xread(i32, i8*, i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
