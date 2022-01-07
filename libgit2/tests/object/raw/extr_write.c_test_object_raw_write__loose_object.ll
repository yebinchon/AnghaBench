; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_write.c_test_object_raw_write__loose_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_write.c_test_object_raw_write__loose_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"3d7f8a6af076c8c3f20071a8935cdbe8228594d1\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"test-objects/3d\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"test-objects/3d/7f8a6af076c8c3f20071a8935cdbe8228594d1\00", align 1
@__const.test_object_raw_write__loose_object.commit = private unnamed_addr constant %struct.TYPE_5__ { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0) }, align 8
@__const.test_object_raw_write__loose_object.commit_data = private unnamed_addr constant [354 x i8] c"tree dff2da90b254e1beb889d1f1f1288be1803782df\0Aauthor A U Thor <author@example.com> 1227814297 +0000\0Acommitter C O Mitter <committer@example.com> 1227814297 +0000\0A\0AA one-line commit summary\0A\0AThe body of the commit message, containing further explanation\0Aof the purpose of the changes introduced by the commit.\0A\0ASigned-of-by: A U Thor <author@example.com>\0A", align 16
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_write__loose_object() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca [354 x i8], align 16
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_object_raw_write__loose_object.commit to i8*), i64 24, i1 false)
  %5 = bitcast [354 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([354 x i8], [354 x i8]* @__const.test_object_raw_write__loose_object.commit_data, i32 0, i32 0), i64 354, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %7 = getelementptr inbounds [354 x i8], [354 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 354, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %10 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @test_body(%struct.TYPE_5__* %1, %struct.TYPE_6__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_body(%struct.TYPE_5__*, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
