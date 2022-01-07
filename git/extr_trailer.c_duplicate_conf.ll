; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_duplicate_conf.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_duplicate_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_info = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conf_info*, %struct.conf_info*)* @duplicate_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duplicate_conf(%struct.conf_info* %0, %struct.conf_info* %1) #0 {
  %3 = alloca %struct.conf_info*, align 8
  %4 = alloca %struct.conf_info*, align 8
  store %struct.conf_info* %0, %struct.conf_info** %3, align 8
  store %struct.conf_info* %1, %struct.conf_info** %4, align 8
  %5 = load %struct.conf_info*, %struct.conf_info** %3, align 8
  %6 = load %struct.conf_info*, %struct.conf_info** %4, align 8
  %7 = bitcast %struct.conf_info* %5 to i8*
  %8 = bitcast %struct.conf_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = load %struct.conf_info*, %struct.conf_info** %4, align 8
  %10 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @xstrdup_or_null(i8* %11)
  %13 = load %struct.conf_info*, %struct.conf_info** %3, align 8
  %14 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.conf_info*, %struct.conf_info** %4, align 8
  %16 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @xstrdup_or_null(i8* %17)
  %19 = load %struct.conf_info*, %struct.conf_info** %3, align 8
  %20 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.conf_info*, %struct.conf_info** %4, align 8
  %22 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @xstrdup_or_null(i8* %23)
  %25 = load %struct.conf_info*, %struct.conf_info** %3, align 8
  %26 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xstrdup_or_null(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
