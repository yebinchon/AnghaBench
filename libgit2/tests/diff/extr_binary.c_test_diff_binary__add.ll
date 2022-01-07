; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__add.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [216 x i8] c"diff --git a/binary.bin b/binary.bin\0Anew file mode 100644\0Aindex 0000000000000000000000000000000000000000..bd474b2519cc15eab801ff851cc7d50f0dee49a1\0AGIT binary patch\0Aliteral 3\0AKc${Nk-~s>u4FC%O\0A\0Aliteral 0\0AHc$@<O00001\0A\0A\00", align 1
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"diff_format_email\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"873806f6f27e631eb0b23e4b56bea2bfac14a373\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"897d3af16ca9e420cd071b1c4541bd2b91d04c8c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_binary__add() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i8*, align 8
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %8, i32* @repo, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @test_patch(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %1, i8* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @test_patch(i8*, i8*, %struct.TYPE_4__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
