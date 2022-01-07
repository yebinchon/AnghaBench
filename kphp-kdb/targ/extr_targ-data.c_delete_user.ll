; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_delete_user.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_delete_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i64, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.lev_delete_user = type { i32 }

@User = common dso_local global %struct.TYPE_18__** null, align 8
@tot_users = common dso_local global i32 0, align 4
@q_sex = common dso_local global i32 0, align 4
@q_operator = common dso_local global i32 0, align 4
@q_browser = common dso_local global i32 0, align 4
@q_region = common dso_local global i32 0, align 4
@q_height = common dso_local global i32 0, align 4
@q_smoking = common dso_local global i32 0, align 4
@q_alcohol = common dso_local global i32 0, align 4
@q_ppriority = common dso_local global i32 0, align 4
@q_iiothers = common dso_local global i32 0, align 4
@q_hidden = common dso_local global i32 0, align 4
@q_cvisited = common dso_local global i32 0, align 4
@q_gcountry = common dso_local global i32 0, align 4
@q_custom1 = common dso_local global i32 0, align 4
@q_custom2 = common dso_local global i32 0, align 4
@q_custom3 = common dso_local global i32 0, align 4
@q_custom4 = common dso_local global i32 0, align 4
@q_custom5 = common dso_local global i32 0, align 4
@q_custom6 = common dso_local global i32 0, align 4
@q_custom7 = common dso_local global i32 0, align 4
@q_custom8 = common dso_local global i32 0, align 4
@q_custom9 = common dso_local global i32 0, align 4
@q_custom10 = common dso_local global i32 0, align 4
@q_custom11 = common dso_local global i32 0, align 4
@q_custom12 = common dso_local global i32 0, align 4
@q_custom13 = common dso_local global i32 0, align 4
@q_custom14 = common dso_local global i32 0, align 4
@q_custom15 = common dso_local global i32 0, align 4
@q_timezone = common dso_local global i32 0, align 4
@q_has_photo = common dso_local global i32 0, align 4
@q_uses_apps = common dso_local global i32 0, align 4
@q_pays_money = common dso_local global i32 0, align 4
@q_mstatus = common dso_local global i32 0, align 4
@q_political = common dso_local global i32 0, align 4
@q_country = common dso_local global i32 0, align 4
@q_city = common dso_local global i32 0, align 4
@q_byear = common dso_local global i32 0, align 4
@q_bmonth = common dso_local global i32 0, align 4
@q_bday = common dso_local global i32 0, align 4
@AdSpace = common dso_local global i32 0, align 4
@active_ad_nodes = common dso_local global i32 0, align 4
@inactive_ad_nodes = common dso_local global i32 0, align 4
@clicked_ad_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_delete_user*)* @delete_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_user(%struct.lev_delete_user* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_delete_user*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.lev_delete_user* %0, %struct.lev_delete_user** %3, align 8
  %8 = load %struct.lev_delete_user*, %struct.lev_delete_user** %3, align 8
  %9 = getelementptr inbounds %struct.lev_delete_user, %struct.lev_delete_user* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @conv_user_id(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %509

16:                                               ; preds = %1
  %17 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @User, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %17, i64 %19
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %6, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = icmp ne %struct.TYPE_18__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %509

25:                                               ; preds = %16
  %26 = load i32, i32* @tot_users, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @tot_users, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 53
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = call i32 @user_to_olist(%struct.TYPE_18__* %33)
  %35 = call i32 @online_list_remove(i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 54
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @online_convert_time(i32 %38)
  %40 = call i32 @online_increment(i32 %39, i32 -1)
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 52
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 53
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 50
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 49
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = call %struct.TYPE_17__* @utree_merge(%struct.TYPE_19__* %48, %struct.TYPE_19__* %51)
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %7, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = icmp ne %struct.TYPE_17__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 51
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %60, align 8
  br label %61

61:                                               ; preds = %55, %41
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 51
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = bitcast %struct.TYPE_18__* %67 to %struct.TYPE_17__*
  %69 = icmp eq %struct.TYPE_17__* %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 51
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %75, align 8
  br label %82

76:                                               ; preds = %61
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 51
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %81, align 8
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 49
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %84, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 50
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 51
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = call i32 @user_clear_education(%struct.TYPE_18__* %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = call i32 @user_clear_schools(%struct.TYPE_18__* %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = call i32 @user_clear_addresses(%struct.TYPE_18__* %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = call i32 @user_clear_military(%struct.TYPE_18__* %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = call i32 @user_clear_work(%struct.TYPE_18__* %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = call i32 @user_clear_groups(%struct.TYPE_18__* %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %102 = call i32 @user_clear_langs(%struct.TYPE_18__* %101)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 44
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @q_sex, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @user_clear_field(i32 %105, i32 %106, i32 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 44
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @q_operator, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @user_clear_field(i32 %113, i32 %114, i32 %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 44
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @q_browser, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @user_clear_field(i32 %121, i32 %122, i32 %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 44
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @q_region, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @user_clear_field(i32 %129, i32 %130, i32 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 44
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @q_height, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @user_clear_field(i32 %137, i32 %138, i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 44
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @q_smoking, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @user_clear_field(i32 %145, i32 %146, i32 %149)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 44
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @q_alcohol, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @user_clear_field(i32 %153, i32 %154, i32 %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 44
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @q_ppriority, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @user_clear_field(i32 %161, i32 %162, i32 %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 44
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @q_iiothers, align 4
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @user_clear_field(i32 %169, i32 %170, i32 %173)
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 44
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @q_hidden, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @user_clear_field(i32 %177, i32 %178, i32 %181)
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 44
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @q_cvisited, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @user_clear_field(i32 %185, i32 %186, i32 %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 44
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @q_gcountry, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @user_clear_field(i32 %193, i32 %194, i32 %197)
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 44
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @q_custom1, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @user_clear_field(i32 %201, i32 %202, i32 %205)
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 44
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @q_custom2, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 13
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @user_clear_field(i32 %209, i32 %210, i32 %213)
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 44
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @q_custom3, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 14
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @user_clear_field(i32 %217, i32 %218, i32 %221)
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 44
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @q_custom4, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 15
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @user_clear_field(i32 %225, i32 %226, i32 %229)
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 44
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @q_custom5, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 16
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @user_clear_field(i32 %233, i32 %234, i32 %237)
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 44
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @q_custom6, align 4
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 17
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @user_clear_field(i32 %241, i32 %242, i32 %245)
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 44
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @q_custom7, align 4
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 18
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @user_clear_field(i32 %249, i32 %250, i32 %253)
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 44
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @q_custom8, align 4
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 19
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @user_clear_field(i32 %257, i32 %258, i32 %261)
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 44
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @q_custom9, align 4
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 20
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @user_clear_field(i32 %265, i32 %266, i32 %269)
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 44
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @q_custom10, align 4
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 21
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @user_clear_field(i32 %273, i32 %274, i32 %277)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 44
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @q_custom11, align 4
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 22
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @user_clear_field(i32 %281, i32 %282, i32 %285)
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 44
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @q_custom12, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 23
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @user_clear_field(i32 %289, i32 %290, i32 %293)
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 44
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @q_custom13, align 4
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 24
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @user_clear_field(i32 %297, i32 %298, i32 %301)
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 44
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @q_custom14, align 4
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 25
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @user_clear_field(i32 %305, i32 %306, i32 %309)
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 44
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @q_custom15, align 4
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 26
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @user_clear_field(i32 %313, i32 %314, i32 %317)
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 44
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @q_timezone, align 4
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 27
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @user_clear_field(i32 %321, i32 %322, i32 %325)
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 44
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @q_has_photo, align 4
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 28
  %333 = load i32, i32* %332, align 8
  %334 = and i32 %333, 129
  %335 = icmp eq i32 %334, 1
  %336 = zext i1 %335 to i32
  %337 = call i32 @user_clear_field(i32 %329, i32 %330, i32 %336)
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 44
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @q_uses_apps, align 4
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 28
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, 130
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i32
  %348 = call i32 @user_clear_field(i32 %340, i32 %341, i32 %347)
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 44
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @q_pays_money, align 4
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 28
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, 132
  %357 = icmp eq i32 %356, 4
  %358 = zext i1 %357 to i32
  %359 = call i32 @user_clear_field(i32 %351, i32 %352, i32 %358)
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 44
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @q_mstatus, align 4
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 29
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @user_clear_field(i32 %362, i32 %363, i32 %366)
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 44
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @q_political, align 4
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 30
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @user_clear_field(i32 %370, i32 %371, i32 %374)
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 44
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @q_country, align 4
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 31
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @user_clear_field(i32 %378, i32 %379, i32 %382)
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 44
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @q_city, align 4
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 32
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @user_clear_field(i32 %386, i32 %387, i32 %390)
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 44
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 48
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @delete_user_hashlist(i32 %394, i32 %397)
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 44
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 47
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @delete_user_hashlist(i32 %401, i32 %404)
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 44
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %409, i32 0, i32 46
  %411 = load i32, i32* %410, align 8
  %412 = call i32 @delete_user_hashlist(i32 %408, i32 %411)
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 44
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 45
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @delete_user_hashlist(i32 %415, i32 %418)
  %420 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %420, i32 0, i32 44
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @q_byear, align 4
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 33
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @user_clear_field(i32 %422, i32 %423, i32 %426)
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 44
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @q_bmonth, align 4
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 34
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @user_clear_field(i32 %430, i32 %431, i32 %434)
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 44
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @q_bday, align 4
  %440 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %440, i32 0, i32 35
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @user_clear_field(i32 %438, i32 %439, i32 %442)
  %444 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i32 0, i32 43
  %446 = load i64, i64* %445, align 8
  %447 = call i32 @exact_strfree(i64 %446)
  %448 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 40
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @exact_strfree(i64 %450)
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 42
  %454 = load i64, i64* %453, align 8
  %455 = call i32 @exact_strfree(i64 %454)
  %456 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 41
  %458 = load i64, i64* %457, align 8
  %459 = call i32 @exact_strfree(i64 %458)
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %460, i32 0, i32 40
  store i64 0, i64* %461, align 8
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %463 = call i32 @user_clear_interests(%struct.TYPE_18__* %462, i32 -1)
  %464 = load i32, i32* @AdSpace, align 4
  %465 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %465, i32 0, i32 39
  %467 = load i32, i32* %466, align 8
  %468 = call i64 @intree_free(i32 %464, i32 %467)
  %469 = load i32, i32* @active_ad_nodes, align 4
  %470 = sext i32 %469 to i64
  %471 = sub nsw i64 %470, %468
  %472 = trunc i64 %471 to i32
  store i32 %472, i32* @active_ad_nodes, align 4
  %473 = load i32, i32* @AdSpace, align 4
  %474 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 38
  %476 = load i32, i32* %475, align 4
  %477 = call i64 @intree_free(i32 %473, i32 %476)
  %478 = load i32, i32* @inactive_ad_nodes, align 4
  %479 = sext i32 %478 to i64
  %480 = sub nsw i64 %479, %477
  %481 = trunc i64 %480 to i32
  store i32 %481, i32* @inactive_ad_nodes, align 4
  %482 = load i32, i32* @AdSpace, align 4
  %483 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 37
  %485 = load i32, i32* %484, align 8
  %486 = call i64 @intree_free(i32 %482, i32 %485)
  %487 = load i32, i32* @clicked_ad_nodes, align 4
  %488 = sext i32 %487 to i64
  %489 = sub nsw i64 %488, %486
  %490 = trunc i64 %489 to i32
  store i32 %490, i32* @clicked_ad_nodes, align 4
  %491 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %491, i32 0, i32 36
  %493 = load i32*, i32** %492, align 8
  %494 = icmp ne i32* %493, null
  br i1 %494, label %495, label %502

495:                                              ; preds = %82
  %496 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %496, i32 0, i32 36
  %498 = load i32*, i32** %497, align 8
  %499 = call i32 @targ_weights_vector_free(i32* %498)
  %500 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %500, i32 0, i32 36
  store i32* null, i32** %501, align 8
  br label %502

502:                                              ; preds = %495, %82
  %503 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %504 = call i32 @zfree(%struct.TYPE_18__* %503, i32 272)
  %505 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @User, align 8
  %506 = load i32, i32* %5, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %505, i64 %507
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %508, align 8
  store i32 1, i32* %2, align 4
  br label %509

509:                                              ; preds = %502, %24, %15
  %510 = load i32, i32* %2, align 4
  ret i32 %510
}

declare dso_local i32 @conv_user_id(i32) #1

declare dso_local i32 @online_list_remove(i32) #1

declare dso_local i32 @user_to_olist(%struct.TYPE_18__*) #1

declare dso_local i32 @online_increment(i32, i32) #1

declare dso_local i32 @online_convert_time(i32) #1

declare dso_local %struct.TYPE_17__* @utree_merge(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @user_clear_education(%struct.TYPE_18__*) #1

declare dso_local i32 @user_clear_schools(%struct.TYPE_18__*) #1

declare dso_local i32 @user_clear_addresses(%struct.TYPE_18__*) #1

declare dso_local i32 @user_clear_military(%struct.TYPE_18__*) #1

declare dso_local i32 @user_clear_work(%struct.TYPE_18__*) #1

declare dso_local i32 @user_clear_groups(%struct.TYPE_18__*) #1

declare dso_local i32 @user_clear_langs(%struct.TYPE_18__*) #1

declare dso_local i32 @user_clear_field(i32, i32, i32) #1

declare dso_local i32 @delete_user_hashlist(i32, i32) #1

declare dso_local i32 @exact_strfree(i64) #1

declare dso_local i32 @user_clear_interests(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @intree_free(i32, i32) #1

declare dso_local i32 @targ_weights_vector_free(i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
