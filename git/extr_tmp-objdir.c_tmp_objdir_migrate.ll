; ModuleID = '/home/carl/AnghaBench/git/extr_tmp-objdir.c_tmp_objdir_migrate.c'
source_filename = "/home/carl/AnghaBench/git/extr_tmp-objdir.c_tmp_objdir_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.tmp_objdir = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmp_objdir_migrate(%struct.tmp_objdir* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmp_objdir*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32, align 4
  store %struct.tmp_objdir* %0, %struct.tmp_objdir** %3, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.tmp_objdir*, %struct.tmp_objdir** %3, align 8
  %10 = icmp ne %struct.tmp_objdir* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.tmp_objdir*, %struct.tmp_objdir** %3, align 8
  %14 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %13, i32 0, i32 0
  %15 = call i32 @strbuf_addbuf(%struct.strbuf* %4, i32* %14)
  %16 = call i32 (...) @get_object_directory()
  %17 = call i32 @strbuf_addstr(%struct.strbuf* %5, i32 %16)
  %18 = call i32 @migrate_paths(%struct.strbuf* %4, %struct.strbuf* %5)
  store i32 %18, i32* %6, align 4
  %19 = call i32 @strbuf_release(%struct.strbuf* %4)
  %20 = call i32 @strbuf_release(%struct.strbuf* %5)
  %21 = load %struct.tmp_objdir*, %struct.tmp_objdir** %3, align 8
  %22 = call i32 @tmp_objdir_destroy(%struct.tmp_objdir* %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @get_object_directory(...) #2

declare dso_local i32 @migrate_paths(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @tmp_objdir_destroy(%struct.tmp_objdir*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
