; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_show_mode_change.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_show_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.diff_options = type { i32 }
%struct.diff_filepair = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c" mode change %06o => %06o\00", align 1
@DIFF_SYMBOL_SUMMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, %struct.diff_filepair*, i32)* @show_mode_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_mode_change(%struct.diff_options* %0, %struct.diff_filepair* %1, i32 %2) #0 {
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca %struct.diff_filepair*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %9 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %3
  %15 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %16 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %14
  %22 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %23 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %28 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %26, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %21
  %34 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %35 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %36 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %41 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 32)
  %50 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %51 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @quote_c_style(i32 %54, %struct.strbuf* %7, i32* null, i32 0)
  br label %56

56:                                               ; preds = %48, %33
  %57 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 10)
  %58 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %59 = load i32, i32* @DIFF_SYMBOL_SUMMARY, align 4
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @emit_diff_symbol(%struct.diff_options* %58, i32 %59, i32 %61, i32 %63, i32 0)
  %65 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %66

66:                                               ; preds = %56, %21, %14, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64, i64) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @quote_c_style(i32, %struct.strbuf*, i32*, i32) #2

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
