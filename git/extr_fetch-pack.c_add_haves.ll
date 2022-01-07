; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_add_haves.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_add_haves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { %struct.object_id* (%struct.fetch_negotiator*)* }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"have %s\0A\00", align 1
@MAX_IN_VAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_negotiator*, %struct.strbuf*, i32*, i32*)* @add_haves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_haves(%struct.fetch_negotiator* %0, %struct.strbuf* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.fetch_negotiator*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %30, %4
  %13 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %5, align 8
  %14 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %13, i32 0, i32 0
  %15 = load %struct.object_id* (%struct.fetch_negotiator*)*, %struct.object_id* (%struct.fetch_negotiator*)** %14, align 8
  %16 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %5, align 8
  %17 = call %struct.object_id* %15(%struct.fetch_negotiator* %16)
  store %struct.object_id* %17, %struct.object_id** %11, align 8
  %18 = icmp ne %struct.object_id* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %21 = load %struct.object_id*, %struct.object_id** %11, align 8
  %22 = call i32 @oid_to_hex(%struct.object_id* %21)
  %23 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %31

30:                                               ; preds = %19
  br label %12

31:                                               ; preds = %29, %12
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MAX_IN_VAIN, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %31
  %44 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %45 = call i32 (%struct.strbuf*, i8*, ...) @packet_buf_write(%struct.strbuf* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @next_flush(i32 1, i32 %48)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @packet_buf_write(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @next_flush(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
