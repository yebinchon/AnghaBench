; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_filter.c_bufferevent_filter_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_filter.c_bufferevent_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32 }
%struct.bufferevent_filtered = type { void (i8*)*, i8*, i8*, %struct.bufferevent*, i8*, i8*, i8*, i32 }

@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@be_null_filter = common dso_local global i8* null, align 8
@bufferevent_ops_filter = common dso_local global i32 0, align 4
@be_filter_readcb = common dso_local global i32 0, align 4
@be_filter_writecb = common dso_local global i32 0, align 4
@be_filter_eventcb = common dso_local global i32 0, align 4
@bufferevent_filtered_inbuf_cb = common dso_local global i32 0, align 4
@EVBUFFER_CB_ENABLED = common dso_local global i32 0, align 4
@bufferevent_filtered_outbuf_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_filter_new(%struct.bufferevent* %0, i8* %1, i8* %2, i32 %3, void (i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.bufferevent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.bufferevent_filtered*, align 8
  %15 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store void (i8*)* %4, void (i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %15, align 4
  %20 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %21 = icmp ne %struct.bufferevent* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  br label %125

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** @be_null_filter, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** @be_null_filter, align 8
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = call %struct.bufferevent_filtered* @mm_calloc(i32 1, i32 64)
  store %struct.bufferevent_filtered* %34, %struct.bufferevent_filtered** %14, align 8
  %35 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %36 = icmp ne %struct.bufferevent_filtered* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  br label %125

38:                                               ; preds = %33
  %39 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %40 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %39, i32 0, i32 7
  %41 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %42 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @bufferevent_init_common_(i32* %40, i32 %43, i32* @bufferevent_ops_filter, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %49 = call i32 @mm_free(%struct.bufferevent_filtered* %48)
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  br label %125

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %57 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %56)
  %58 = call i32 @bufferevent_enable_locking_(%struct.bufferevent* %57, i32* null)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %61 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %62 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %61, i32 0, i32 3
  store %struct.bufferevent* %60, %struct.bufferevent** %62, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %65 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %68 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load void (i8*)*, void (i8*)** %12, align 8
  %70 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %71 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %70, i32 0, i32 0
  store void (i8*)* %69, void (i8*)** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %74 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %76 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %75, i32 0, i32 3
  %77 = load %struct.bufferevent*, %struct.bufferevent** %76, align 8
  %78 = load i32, i32* @be_filter_readcb, align 4
  %79 = load i32, i32* @be_filter_writecb, align 4
  %80 = load i32, i32* @be_filter_eventcb, align 4
  %81 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %82 = call i32 @bufferevent_setcb(%struct.bufferevent* %77, i32 %78, i32 %79, i32 %80, %struct.bufferevent_filtered* %81)
  %83 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %84 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %83)
  %85 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @bufferevent_filtered_inbuf_cb, align 4
  %88 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %89 = call i8* @evbuffer_add_cb(i32 %86, i32 %87, %struct.bufferevent_filtered* %88)
  %90 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %91 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %93 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %92)
  %94 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %97 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %100 = call i32 @evbuffer_cb_clear_flags(i32 %95, i8* %98, i32 %99)
  %101 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %102 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %101)
  %103 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @bufferevent_filtered_outbuf_cb, align 4
  %106 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %107 = call i8* @evbuffer_add_cb(i32 %104, i32 %105, %struct.bufferevent_filtered* %106)
  %108 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %109 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %111 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %110)
  %112 = call i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent* %111)
  %113 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %114 = call i32 @bufferevent_incref_(%struct.bufferevent* %113)
  %115 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %116 = load i32, i32* @EV_READ, align 4
  %117 = load i32, i32* @EV_WRITE, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @bufferevent_enable(%struct.bufferevent* %115, i32 %118)
  %120 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %121 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %122 = call i32 @bufferevent_suspend_read_(%struct.bufferevent* %120, i32 %121)
  %123 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %14, align 8
  %124 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %123)
  store %struct.bufferevent* %124, %struct.bufferevent** %7, align 8
  br label %125

125:                                              ; preds = %59, %47, %37, %22
  %126 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  ret %struct.bufferevent* %126
}

declare dso_local %struct.bufferevent_filtered* @mm_calloc(i32, i32) #1

declare dso_local i64 @bufferevent_init_common_(i32*, i32, i32*, i32) #1

declare dso_local i32 @mm_free(%struct.bufferevent_filtered*) #1

declare dso_local i32 @bufferevent_enable_locking_(%struct.bufferevent*, i32*) #1

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, %struct.bufferevent_filtered*) #1

declare dso_local i8* @evbuffer_add_cb(i32, i32, %struct.bufferevent_filtered*) #1

declare dso_local i32 @evbuffer_cb_clear_flags(i32, i8*, i32) #1

declare dso_local i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_incref_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_suspend_read_(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
