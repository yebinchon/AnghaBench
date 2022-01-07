; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_fetch.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { %struct.walker_data* }
%struct.walker_data = type { %struct.alt_base* }
%struct.alt_base = type { i8*, %struct.alt_base* }

@.str = private unnamed_addr constant [27 x i8] c"Unable to find %s under %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, i8*)* @fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch(%struct.walker* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.walker*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.walker_data*, align 8
  %7 = alloca %struct.alt_base*, align 8
  store %struct.walker* %0, %struct.walker** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.walker*, %struct.walker** %4, align 8
  %9 = getelementptr inbounds %struct.walker, %struct.walker* %8, i32 0, i32 0
  %10 = load %struct.walker_data*, %struct.walker_data** %9, align 8
  store %struct.walker_data* %10, %struct.walker_data** %6, align 8
  %11 = load %struct.walker_data*, %struct.walker_data** %6, align 8
  %12 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %11, i32 0, i32 0
  %13 = load %struct.alt_base*, %struct.alt_base** %12, align 8
  store %struct.alt_base* %13, %struct.alt_base** %7, align 8
  %14 = load %struct.walker*, %struct.walker** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @fetch_object(%struct.walker* %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %30, %19
  %21 = load %struct.alt_base*, %struct.alt_base** %7, align 8
  %22 = icmp ne %struct.alt_base* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.walker*, %struct.walker** %4, align 8
  %25 = load %struct.alt_base*, %struct.alt_base** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @http_fetch_pack(%struct.walker* %24, %struct.alt_base* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load %struct.walker*, %struct.walker** %4, align 8
  %32 = load %struct.walker_data*, %struct.walker_data** %6, align 8
  %33 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %32, i32 0, i32 0
  %34 = load %struct.alt_base*, %struct.alt_base** %33, align 8
  %35 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @fetch_alternates(%struct.walker* %31, i8* %36)
  %38 = load %struct.alt_base*, %struct.alt_base** %7, align 8
  %39 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %38, i32 0, i32 1
  %40 = load %struct.alt_base*, %struct.alt_base** %39, align 8
  store %struct.alt_base* %40, %struct.alt_base** %7, align 8
  br label %20

41:                                               ; preds = %20
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @hash_to_hex(i8* %42)
  %44 = load %struct.walker_data*, %struct.walker_data** %6, align 8
  %45 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %44, i32 0, i32 0
  %46 = load %struct.alt_base*, %struct.alt_base** %45, align 8
  %47 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %29, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @fetch_object(%struct.walker*, i8*) #1

declare dso_local i32 @http_fetch_pack(%struct.walker*, %struct.alt_base*, i8*) #1

declare dso_local i32 @fetch_alternates(%struct.walker*, i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @hash_to_hex(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
