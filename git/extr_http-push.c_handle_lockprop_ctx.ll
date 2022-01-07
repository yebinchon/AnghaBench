; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_handle_lockprop_ctx.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_handle_lockprop_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_ctx = type { i32, i64 }

@DAV_CTX_LOCKENTRY = common dso_local global i32 0, align 4
@DAV_PROP_LOCKEX = common dso_local global i32 0, align 4
@DAV_PROP_LOCKWR = common dso_local global i32 0, align 4
@DAV_LOCK_OK = common dso_local global i32 0, align 4
@DAV_CTX_LOCKTYPE_WRITE = common dso_local global i32 0, align 4
@DAV_CTX_LOCKTYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xml_ctx*, i32)* @handle_lockprop_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_lockprop_ctx(%struct.xml_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.xml_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.xml_ctx* %0, %struct.xml_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %2
  %13 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DAV_CTX_LOCKENTRY, align 4
  %17 = call i32 @strcmp(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %12
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DAV_PROP_LOCKEX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DAV_PROP_LOCKWR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @DAV_LOCK_OK, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %25, %19
  %37 = load i32, i32* @DAV_LOCK_OK, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %67

41:                                               ; preds = %12
  %42 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DAV_CTX_LOCKTYPE_WRITE, align 4
  %46 = call i32 @strcmp(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @DAV_PROP_LOCKWR, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %66

53:                                               ; preds = %41
  %54 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DAV_CTX_LOCKTYPE_EXCLUSIVE, align 4
  %58 = call i32 @strcmp(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @DAV_PROP_LOCKEX, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %2
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
