; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_show_rename_copy.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_show_rename_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.diff_options = type { i32 }
%struct.diff_filepair = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c" %s %s (%d%%)\0A\00", align 1
@DIFF_SYMBOL_SUMMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i8*, %struct.diff_filepair*)* @show_rename_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_rename_copy(%struct.diff_options* %0, i8* %1, %struct.diff_filepair* %2) #0 {
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.diff_filepair*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.strbuf, align 4
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.diff_filepair* %2, %struct.diff_filepair** %6, align 8
  %9 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %12 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %17 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pprint_rename(%struct.strbuf* %8, i32 %15, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %26 = call i32 @similarity_index(%struct.diff_filepair* %25)
  %27 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24, i32 %26)
  %28 = call i32 @strbuf_release(%struct.strbuf* %8)
  %29 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %30 = load i32, i32* @DIFF_SYMBOL_SUMMARY, align 4
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @emit_diff_symbol(%struct.diff_options* %29, i32 %30, i32 %32, i32 %34, i32 0)
  %36 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %38 = call i32 @show_mode_change(%struct.diff_options* %36, %struct.diff_filepair* %37, i32 0)
  %39 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pprint_rename(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32, i32) #2

declare dso_local i32 @similarity_index(%struct.diff_filepair*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32, i32, i32) #2

declare dso_local i32 @show_mode_change(%struct.diff_options*, %struct.diff_filepair*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
