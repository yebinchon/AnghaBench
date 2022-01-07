; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_path_read_stat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_path_read_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ish_stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_read_stat(%struct.mount* %0, i8* %1, %struct.ish_stat* %2, i32* %3) #0 {
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ish_stat*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ish_stat* %2, %struct.ish_stat** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.mount*, %struct.mount** %5, align 8
  %11 = getelementptr inbounds %struct.mount, %struct.mount* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @bind_path(i32 %13, i32 1, i8* %14)
  %16 = load %struct.mount*, %struct.mount** %5, align 8
  %17 = load %struct.mount*, %struct.mount** %5, align 8
  %18 = getelementptr inbounds %struct.mount, %struct.mount* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @db_exec(%struct.mount* %16, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.mount*, %struct.mount** %5, align 8
  %29 = getelementptr inbounds %struct.mount, %struct.mount* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sqlite3_column_int64(i32 %31, i32 0)
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.ish_stat*, %struct.ish_stat** %7, align 8
  %36 = icmp ne %struct.ish_stat* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.ish_stat*, %struct.ish_stat** %7, align 8
  %39 = load %struct.mount*, %struct.mount** %5, align 8
  %40 = getelementptr inbounds %struct.mount, %struct.mount* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @sqlite3_column_blob(i32 %42, i32 1)
  %44 = inttoptr i64 %43 to %struct.ish_stat*
  %45 = bitcast %struct.ish_stat* %38 to i8*
  %46 = bitcast %struct.ish_stat* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %37, %34
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.mount*, %struct.mount** %5, align 8
  %50 = load %struct.mount*, %struct.mount** %5, align 8
  %51 = getelementptr inbounds %struct.mount, %struct.mount* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @db_reset(%struct.mount* %49, i32 %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @bind_path(i32, i32, i8*) #1

declare dso_local i32 @db_exec(%struct.mount*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @db_reset(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
