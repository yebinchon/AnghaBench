; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_mimemap.c_test_default_attributes.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_mimemap.c_test_default_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"text/plain; charset=utf-8\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"application/xhtml+xml\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"application/xhtml+xml; charset=utf-8\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"text/css; charset=utf-8\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_default_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_default_attributes() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = call i32 @h2o_mimemap_get_default_attributes(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %1)
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = call i32 @ok(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10)
  %12 = call i32 @h2o_mimemap_get_default_attributes(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %1)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ok(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20)
  %22 = call i32 @h2o_mimemap_get_default_attributes(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %1)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ok(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30)
  %32 = call i32 @h2o_mimemap_get_default_attributes(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %1)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ok(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  %42 = call i32 @h2o_mimemap_get_default_attributes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_3__* %1)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ok(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50)
  %52 = call i32 @h2o_mimemap_get_default_attributes(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_3__* %1)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ok(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60)
  %62 = call i32 @h2o_mimemap_get_default_attributes(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_3__* %1)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @ok(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73)
  ret void
}

declare dso_local i32 @h2o_mimemap_get_default_attributes(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
