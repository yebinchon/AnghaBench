; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_grab_1st_switch.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_grab_1st_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.grab_1st_switch_cbdata = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"checkout: moving from \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)* @grab_1st_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_1st_switch(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.grab_1st_switch_cbdata*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %9, align 8
  store %struct.object_id* %1, %struct.object_id** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = bitcast i8* %19 to %struct.grab_1st_switch_cbdata*
  store %struct.grab_1st_switch_cbdata* %20, %struct.grab_1st_switch_cbdata** %16, align 8
  store i8* null, i8** %17, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = call i32 @skip_prefix(i8* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %14)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %71

25:                                               ; preds = %7
  %26 = load i8*, i8** %14, align 8
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %17, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %71

31:                                               ; preds = %25
  %32 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %17, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %17, align 8
  %36 = load %struct.grab_1st_switch_cbdata*, %struct.grab_1st_switch_cbdata** %16, align 8
  %37 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %36, i32 0, i32 0
  %38 = call i32 @strbuf_reset(%struct.TYPE_4__* %37)
  %39 = load %struct.grab_1st_switch_cbdata*, %struct.grab_1st_switch_cbdata** %16, align 8
  %40 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %39, i32 0, i32 1
  %41 = load %struct.object_id*, %struct.object_id** %10, align 8
  %42 = call i32 @oidcpy(i32* %40, %struct.object_id* %41)
  %43 = load i8*, i8** %17, align 8
  %44 = call i8* @strchrnul(i8* %43, i8 signext 10)
  store i8* %44, i8** %18, align 8
  %45 = load %struct.grab_1st_switch_cbdata*, %struct.grab_1st_switch_cbdata** %16, align 8
  %46 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %45, i32 0, i32 0
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @strbuf_add(%struct.TYPE_4__* %46, i8* %47, i32 %53)
  %55 = load %struct.grab_1st_switch_cbdata*, %struct.grab_1st_switch_cbdata** %16, align 8
  %56 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strcmp(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %31
  %62 = load %struct.grab_1st_switch_cbdata*, %struct.grab_1st_switch_cbdata** %16, align 8
  %63 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %62, i32 0, i32 0
  %64 = call i32 @strbuf_reset(%struct.TYPE_4__* %63)
  %65 = load %struct.grab_1st_switch_cbdata*, %struct.grab_1st_switch_cbdata** %16, align 8
  %66 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %65, i32 0, i32 0
  %67 = load %struct.object_id*, %struct.object_id** %10, align 8
  %68 = load i32, i32* @DEFAULT_ABBREV, align 4
  %69 = call i32 @strbuf_add_unique_abbrev(%struct.TYPE_4__* %66, %struct.object_id* %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %31
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %30, %24
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.TYPE_4__*, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
