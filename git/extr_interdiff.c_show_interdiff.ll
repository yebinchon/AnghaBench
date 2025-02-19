; ModuleID = '/home/carl/AnghaBench/git/extr_interdiff.c_show_interdiff.c'
source_filename = "/home/carl/AnghaBench/git/extr_interdiff.c_show_interdiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rev_info = type { i32, i32, i32 }
%struct.diff_options = type { %struct.strbuf*, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@idiff_prefix_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_interdiff(%struct.rev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff_options, align 8
  %6 = alloca %struct.strbuf, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %9 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %10 = call i32 @memcpy(%struct.diff_options* %5, i32* %9, i32 16)
  %11 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @idiff_prefix_cb, align 4
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @strbuf_addchars(%struct.strbuf* %6, i8 signext 32, i32 %15)
  %17 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %5, i32 0, i32 0
  store %struct.strbuf* %6, %struct.strbuf** %17, align 8
  %18 = call i32 @diff_setup_done(%struct.diff_options* %5)
  %19 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @diff_tree_oid(i32 %21, i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %5)
  %26 = call i32 @diffcore_std(%struct.diff_options* %5)
  %27 = call i32 @diff_flush(%struct.diff_options* %5)
  %28 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.diff_options*, i32*, i32) #2

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #2

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #2

declare dso_local i32 @diff_tree_oid(i32, i32, i8*, %struct.diff_options*) #2

declare dso_local i32 @diffcore_std(%struct.diff_options*) #2

declare dso_local i32 @diff_flush(%struct.diff_options*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
