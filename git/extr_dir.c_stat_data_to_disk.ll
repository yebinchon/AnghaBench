; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_stat_data_to_disk.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_stat_data_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_data = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat_data*, %struct.stat_data*)* @stat_data_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_data_to_disk(%struct.stat_data* %0, %struct.stat_data* %1) #0 {
  %3 = alloca %struct.stat_data*, align 8
  %4 = alloca %struct.stat_data*, align 8
  store %struct.stat_data* %0, %struct.stat_data** %3, align 8
  store %struct.stat_data* %1, %struct.stat_data** %4, align 8
  %5 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %6 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @htonl(i8* %8)
  %10 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %11 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %14 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @htonl(i8* %16)
  %18 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %19 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %22 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @htonl(i8* %24)
  %26 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %27 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %30 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @htonl(i8* %32)
  %34 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %35 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %38 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @htonl(i8* %39)
  %41 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %42 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %44 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @htonl(i8* %45)
  %47 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %48 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %50 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @htonl(i8* %51)
  %53 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %54 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %56 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @htonl(i8* %57)
  %59 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %60 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.stat_data*, %struct.stat_data** %4, align 8
  %62 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @htonl(i8* %63)
  %65 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %66 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  ret void
}

declare dso_local i8* @htonl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
