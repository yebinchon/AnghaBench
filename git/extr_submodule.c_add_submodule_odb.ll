; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_add_submodule_odb.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_add_submodule_odb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"objects/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_submodule_odb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strbuf_git_path_submodule(%struct.strbuf* %3, i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @is_directory(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @add_to_alternates_memory(i32 %19)
  br label %21

21:                                               ; preds = %17, %16, %10
  %22 = call i32 @strbuf_release(%struct.strbuf* %3)
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_git_path_submodule(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @is_directory(i32) #2

declare dso_local i32 @add_to_alternates_memory(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
