; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_write_out.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_write_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i64, i32, i64, i64, i64 }

@write_out = common dso_local global i32 0, align 4
@RPC_OUT_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Write timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, i8*, i32, double)* @rpc_write_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_write_out(%struct.rpc_server* %0, i8* %1, i32 %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_server*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rpc_server* %0, %struct.rpc_server** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  %14 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %15 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %192

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %192

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @write_out, align 4
  %26 = call i32 @ADD_CNT(i32 %25)
  %27 = load i32, i32* @write_out, align 4
  %28 = call i32 @START_TIMER(i32 %27)
  %29 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %30 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @RPC_OUT_BUF_SIZE, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %87

37:                                               ; preds = %23
  %38 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %39 = load double, double* %9, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @RPC_OUT_BUF_SIZE, align 4
  %46 = sub nsw i32 %44, %45
  %47 = add nsw i32 %46, 1024
  %48 = call i32 @rpc_sock_write(%struct.rpc_server* %38, double %39, i8* %40, i32 %41, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @write_out, align 4
  %53 = call i32 @END_TIMER(i32 %52)
  store i32 -1, i32* %5, align 4
  br label %192

54:                                               ; preds = %37
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i8*, i8** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %58, %54
  %71 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %72 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @RPC_OUT_BUF_SIZE, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %81 = call i32 @rpc_server_seterror(%struct.rpc_server* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %82 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %83 = call i32 @rpc_server_failure(%struct.rpc_server* %82)
  %84 = load i32, i32* @write_out, align 4
  %85 = call i32 @END_TIMER(i32 %84)
  store i32 -1, i32* %5, align 4
  br label %192

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %23
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %90 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %94 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %97 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp sle i64 %95, %98
  br i1 %99, label %100, label %175

100:                                              ; preds = %87
  %101 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %102 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %108 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @RPC_OUT_BUF_SIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = icmp sle i64 %106, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %100
  %115 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %116 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @memcpy(i32 %118, i8* %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %125 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i32, i32* @write_out, align 4
  %129 = call i32 @END_TIMER(i32 %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  br label %192

131:                                              ; preds = %100
  %132 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %133 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @RPC_OUT_BUF_SIZE, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %139 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %13, align 4
  %143 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %144 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @memcpy(i32 %146, i8* %147, i32 %148)
  %150 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %151 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i8*, i8** %7, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %158, %159
  %161 = call i32 @memcpy(i32 %153, i8* %157, i32 %160)
  %162 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %163 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %164, %168
  %170 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %171 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %170, i32 0, i32 3
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* @write_out, align 4
  %173 = call i32 @END_TIMER(i32 %172)
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %5, align 4
  br label %192

175:                                              ; preds = %87
  %176 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %177 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @memcpy(i32 %179, i8* %180, i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = load %struct.rpc_server*, %struct.rpc_server** %6, align 8
  %186 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load i32, i32* @write_out, align 4
  %190 = call i32 @END_TIMER(i32 %189)
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %175, %131, %114, %79, %51, %22, %18
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @rpc_sock_write(%struct.rpc_server*, double, i8*, i32, i32) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i32 @rpc_server_seterror(%struct.rpc_server*, i8*, i32) #1

declare dso_local i32 @rpc_server_failure(%struct.rpc_server*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
