; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_check_repository_format.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_check_repository_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository_format = type { i32 }
%struct.TYPE_2__ = type { i32 }

@REPOSITORY_FORMAT_INIT = common dso_local global %struct.repository_format zeroinitializer, align 4
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_repository_format() #0 {
  %1 = alloca %struct.repository_format, align 4
  %2 = bitcast %struct.repository_format* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.repository_format* @REPOSITORY_FORMAT_INIT to i8*), i64 4, i1 false)
  %3 = call i32 (...) @get_git_dir()
  %4 = call i32 @check_repository_format_gently(i32 %3, %struct.repository_format* %1, i32* null)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = call i32 @clear_repository_format(%struct.repository_format* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @check_repository_format_gently(i32, %struct.repository_format*, i32*) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i32 @clear_repository_format(%struct.repository_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
