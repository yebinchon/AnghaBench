; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_stat_data_from_disk.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_stat_data_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_data = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat_data*, i8*)* @stat_data_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_data_from_disk(%struct.stat_data* %0, i8* %1) #0 {
  %3 = alloca %struct.stat_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.stat_data* %0, %struct.stat_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @memcpy(%struct.stat_data* %5, i8* %6, i32 72)
  %8 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %9 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @ntohl(i8* %11)
  %13 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %14 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i8* %12, i8** %15, align 8
  %16 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %17 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @ntohl(i8* %19)
  %21 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %22 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %25 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @ntohl(i8* %27)
  %29 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %30 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %33 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @ntohl(i8* %35)
  %37 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %38 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %41 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @ntohl(i8* %42)
  %44 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %45 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %47 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @ntohl(i8* %48)
  %50 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %51 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %53 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @ntohl(i8* %54)
  %56 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %57 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %59 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @ntohl(i8* %60)
  %62 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %63 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %65 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @ntohl(i8* %66)
  %68 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %69 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.stat_data*, i8*, i32) #1

declare dso_local i8* @ntohl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
