; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_is_submodule_ignored.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_is_submodule_ignored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.diff_flags }
%struct.diff_flags = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.diff_options*)* @is_submodule_ignored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_submodule_ignored(i8* %0, %struct.diff_options* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.diff_flags, align 8
  store i8* %0, i8** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %8 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %7, i32 0, i32 0
  %9 = bitcast %struct.diff_flags* %6 to i8*
  %10 = bitcast %struct.diff_flags* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @set_diffopt_flags_from_submodule_config(%struct.diff_options* %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %22 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 0
  %30 = bitcast %struct.diff_flags* %29 to i8*
  %31 = bitcast %struct.diff_flags* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @set_diffopt_flags_from_submodule_config(%struct.diff_options*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
