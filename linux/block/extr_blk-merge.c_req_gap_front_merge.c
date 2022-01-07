
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int bio; int q; } ;
struct bio {int dummy; } ;


 int bio_will_gap (int ,int *,struct bio*,int ) ;

__attribute__((used)) static inline bool req_gap_front_merge(struct request *req, struct bio *bio)
{
 return bio_will_gap(req->q, ((void*)0), bio, req->bio);
}
